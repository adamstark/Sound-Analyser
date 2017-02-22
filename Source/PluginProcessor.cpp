/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic framework code for a JUCE plugin processor.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"


//==============================================================================
SoundAnalyserAudioProcessor::SoundAnalyserAudioProcessor()
 :  analyserTree (AnalysisModel::createAnalyserTree()),
    analyser (analyserTree[AnalysisModel::Ids::BufferSize])
{
    analyserTree.addListener (this);
    refreshFromTree();
}

//==============================================================================
SoundAnalyserAudioProcessor::~SoundAnalyserAudioProcessor()
{
}

//==============================================================================
void SoundAnalyserAudioProcessor::refreshFromTree()
{
    analyser.setBufferSize (analyserTree[AnalysisModel::Ids::BufferSize]);
    analyser.setOSCPort (analyserTree[AnalysisModel::Ids::Port]);
    analyser.setIPAddress (analyserTree[AnalysisModel::Ids::IPAddress].toString().toStdString());
    analyser.setAnalyserIdString (analyserTree[AnalysisModel::Ids::AnalyserId].toString().toStdString());
    
    for (int i = 0;i < analyser.audioAnalyses.size();i++)
    {
        ValueTree tree = analyserTree.getChildWithName (analyser.audioAnalyses[i]->getIdentifier());
        analyser.audioAnalyses[i]->initialise (tree);
    }
}


//==============================================================================
const String SoundAnalyserAudioProcessor::getName() const
{
    return JucePlugin_Name;
}

bool SoundAnalyserAudioProcessor::acceptsMidi() const
{
   #if JucePlugin_WantsMidiInput
    return true;
   #else
    return false;
   #endif
}

bool SoundAnalyserAudioProcessor::producesMidi() const
{
   #if JucePlugin_ProducesMidiOutput
    return true;
   #else
    return false;
   #endif
}

double SoundAnalyserAudioProcessor::getTailLengthSeconds() const
{
    return 0.0;
}

int SoundAnalyserAudioProcessor::getNumPrograms()
{
    return 1;   // NB: some hosts don't cope very well if you tell them there are 0 programs,
                // so this should be at least 1, even if you're not really implementing programs.
}

int SoundAnalyserAudioProcessor::getCurrentProgram()
{
    return 0;
}

void SoundAnalyserAudioProcessor::setCurrentProgram (int index)
{
}

const String SoundAnalyserAudioProcessor::getProgramName (int index)
{
    return String();
}

void SoundAnalyserAudioProcessor::changeProgramName (int index, const String& newName)
{
}

//==============================================================================
void SoundAnalyserAudioProcessor::prepareToPlay (double sampleRate, int samplesPerBlock)
{
    analyser.setSamplingFrequency ((int) sampleRate);
    analyser.setHostFrameSize (samplesPerBlock);
}

void SoundAnalyserAudioProcessor::releaseResources()
{
    // When playback stops, you can use this as an opportunity to free up any
    // spare memory, etc.
}

//==============================================================================
#ifndef JucePlugin_PreferredChannelConfigurations
bool SoundAnalyserAudioProcessor::isBusesLayoutSupported (const BusesLayout& layouts) const
{
#if JucePlugin_IsMidiEffect
    ignoreUnused (layouts);
    return true;
#else
    // This is the place where you check if the layout is supported.
    // In this template code we only support mono or stereo.
    if (layouts.getMainOutputChannelSet() != AudioChannelSet::mono()
        && layouts.getMainOutputChannelSet() != AudioChannelSet::stereo())
        return false;
    
    // This checks if the input layout matches the output layout
#if ! JucePlugin_IsSynth
    if (layouts.getMainOutputChannelSet() != layouts.getMainInputChannelSet())
        return false;
#endif
    
    return true;
#endif
}
#endif


void SoundAnalyserAudioProcessor::processBlock (AudioSampleBuffer& buffer, MidiBuffer& midiMessages)
{
    const int totalNumInputChannels  = getTotalNumInputChannels();
    const int totalNumOutputChannels = getTotalNumOutputChannels();

    // In case we have more outputs than inputs, this code clears any output
    // channels that didn't contain input data, (because these aren't
    // guaranteed to be empty - they may contain garbage).
    // This is here to avoid people getting screaming feedback
    // when they first compile a plugin, but obviously you don't need to keep
    // this code if your algorithm always overwrites all the output channels.
    for (int i = totalNumInputChannels; i < totalNumOutputChannels; ++i)
        buffer.clear (i, 0, buffer.getNumSamples());

    for (int channel = 0; channel < totalNumInputChannels; ++channel)
    {
        float* channelData = buffer.getWritePointer (channel);
        
        if (channel == 0)
        {
            analyser.analyseAudio (channelData, buffer.getNumSamples());
        }
    }
}

//==============================================================================
bool SoundAnalyserAudioProcessor::hasEditor() const
{
    return true; // (change this to false if you choose to not supply an editor)
}

//==============================================================================
AudioProcessorEditor* SoundAnalyserAudioProcessor::createEditor()
{
    return new SoundAnalyserAudioProcessorEditor (*this, analyserTree);
}

//==============================================================================
void SoundAnalyserAudioProcessor::getStateInformation (MemoryBlock& destData)
{
    ScopedPointer<XmlElement> xml = analyserTree.createXml();
    copyXmlToBinary (*xml, destData);
}

//==============================================================================
void SoundAnalyserAudioProcessor::setStateInformation (const void* data, int sizeInBytes)
{
    ScopedPointer<XmlElement> xmlState (getXmlFromBinary (data, sizeInBytes));
    analyserTree = ValueTree::fromXml (*xmlState);
    refreshFromTree();
}

//==============================================================================
// This creates new instances of the plugin..
AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new SoundAnalyserAudioProcessor();
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
{
    if (treeWhosePropertyHasChanged.getType() == AnalysisModel::Ids::SOUNDANALYSER)
    {
        // analyser ID property
        if (property == AnalysisModel::Ids::AnalyserId)
        {
            analyser.setAnalyserIdString (treeWhosePropertyHasChanged[property].toString().toStdString());
        }
        // buffer size property
        else if (property == AnalysisModel::Ids::BufferSize)
        {
            analyser.setBufferSize (treeWhosePropertyHasChanged[property]);
        }
        else if (property == AnalysisModel::Ids::Port)
        {
            analyser.setOSCPort (treeWhosePropertyHasChanged[property]);
        }
        else if (property == AnalysisModel::Ids::IPAddress)
        {
            analyser.setIPAddress (treeWhosePropertyHasChanged[property].toString().toStdString());
        }
    }
    else
    {
        // send state changes
        if (property == AnalysisProperties::send)
        {
            for (int i = 0;i < analyser.audioAnalyses.size();i++)
            {
                if (treeWhosePropertyHasChanged.getType() == analyser.audioAnalyses[i]->getIdentifier())
                {
                    analyser.audioAnalyses[i]->send = treeWhosePropertyHasChanged[AnalysisProperties::send];
                }
            }
        }
        // plot state changes
        else if (property == AnalysisProperties::plot)
        {
            for (int i = 0;i < analyser.audioAnalyses.size();i++)
            {
                if (treeWhosePropertyHasChanged.getType() == analyser.audioAnalyses[i]->getIdentifier())
                {
                    analyser.audioAnalyses[i]->plot = treeWhosePropertyHasChanged[AnalysisProperties::plot];
                    
                    if (analyser.audioAnalyses[i]->plot)
                    {
                        analyser.currentAnalysisToPlotType = analyser.audioAnalyses[i]->getOutputType();
                    }
                }
            }
            
            // clear the plot history
            analyser.clearPlotHistory();
        }
        else // deal with custom properties here
        {
            for (int i = 0;i < analyser.audioAnalyses.size();i++)
            {
                if (treeWhosePropertyHasChanged.getType() == analyser.audioAnalyses[i]->getIdentifier())
                {
                    analyser.audioAnalyses[i]->handleCustomPropertyChange (treeWhosePropertyHasChanged, property);
                }
            }
            
        }
        
        
    }
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded)
{
    refreshFromTree();
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved, int indexFromWhichChildWasRemoved)
{
    for (int i = 0;i < analyser.audioAnalyses.size();i++)
    {
        if (childWhichHasBeenRemoved.getType() == analyser.audioAnalyses[i]->getIdentifier())
        {
            analyser.audioAnalyses[i]->send = false;
            analyser.audioAnalyses[i]->plot = false;
        }
    }
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved, int oldIndex, int newIndex)
{
    
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged)
{
    
}
