/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic startup code for a Juce application.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"


//==============================================================================
SoundAnalyserAudioProcessor::SoundAnalyserAudioProcessor() : analyserTree( AnalysisModel::createAnalyserTree()), analyser(analyserTree[AnalysisModel::Ids::BufferSize])
{
    
    
    analyserTree.addListener(this);
    
    refreshFromTree();
}

//==============================================================================
SoundAnalyserAudioProcessor::~SoundAnalyserAudioProcessor()
{
}

//==============================================================================
float SoundAnalyserAudioProcessor::booleanToFloat(bool input)
{
    if (input)
    {
        return 1.0;
    }
    else
    {
        return 0.0;
    }
}

//==============================================================================
bool SoundAnalyserAudioProcessor::floatToBoolean(float input)
{
    if (input == 1.0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

//==============================================================================
const String SoundAnalyserAudioProcessor::getName() const
{
    return JucePlugin_Name;
}

//==============================================================================
int SoundAnalyserAudioProcessor::getNumParameters()
{
    return totalNumParams;
}

//==============================================================================
float SoundAnalyserAudioProcessor::getParameter (int index)
{
    switch (index)
    {
        default: return 0.0f;
    }
}

//==============================================================================
void SoundAnalyserAudioProcessor::setParameter (int index, float newValue)
{
    switch (index)
    {
        default:            break;
    }
}

//==============================================================================
const String SoundAnalyserAudioProcessor::getParameterName (int index)
{
    switch (index)
    {
        default:            break;
    }
    
    return String::empty;
}

//==============================================================================
const String SoundAnalyserAudioProcessor::getParameterText (int index)
{
    return String (getParameter (index), 2);
}

//==============================================================================
const String SoundAnalyserAudioProcessor::getInputChannelName (int channelIndex) const
{
    return String (channelIndex + 1);
}

//==============================================================================
const String SoundAnalyserAudioProcessor::getOutputChannelName (int channelIndex) const
{
    return String (channelIndex + 1);
}

//==============================================================================
bool SoundAnalyserAudioProcessor::isInputChannelStereoPair (int index) const
{
    return true;
}

//==============================================================================
bool SoundAnalyserAudioProcessor::isOutputChannelStereoPair (int index) const
{
    return true;
}

//==============================================================================
bool SoundAnalyserAudioProcessor::acceptsMidi() const
{
   #if JucePlugin_WantsMidiInput
    return true;
   #else
    return false;
   #endif
}

//==============================================================================
bool SoundAnalyserAudioProcessor::producesMidi() const
{
   #if JucePlugin_ProducesMidiOutput
    return true;
   #else
    return false;
   #endif
}

//==============================================================================
bool SoundAnalyserAudioProcessor::silenceInProducesSilenceOut() const
{
    return false;
}

//==============================================================================
double SoundAnalyserAudioProcessor::getTailLengthSeconds() const
{
    return 0.0;
}

//==============================================================================
int SoundAnalyserAudioProcessor::getNumPrograms()
{
    return 0;
}

//==============================================================================
int SoundAnalyserAudioProcessor::getCurrentProgram()
{
    return 0;
}

//==============================================================================
void SoundAnalyserAudioProcessor::setCurrentProgram (int index)
{
}

//==============================================================================
const String SoundAnalyserAudioProcessor::getProgramName (int index)
{
    return String::empty;
}

//==============================================================================
void SoundAnalyserAudioProcessor::changeProgramName (int index, const String& newName)
{
}

//==============================================================================
void SoundAnalyserAudioProcessor::prepareToPlay (double sampleRate, int samplesPerBlock)
{
    // Use this method as the place to do any pre-playback
    // initialisation that you need..
}

//==============================================================================
void SoundAnalyserAudioProcessor::releaseResources()
{
    // When playback stops, you can use this as an opportunity to free up any
    // spare memory, etc.
}

//==============================================================================
void SoundAnalyserAudioProcessor::processBlock (AudioSampleBuffer& buffer, MidiBuffer& midiMessages)
{
    // This is the place where you'd normally do the guts of your plugin's
    // audio processing...
    for (int channel = 0; channel < getNumInputChannels(); ++channel)
    {
        float* channelData = buffer.getSampleData (channel);
        
        if (channel == 0)
        {
            analyser.analyseAudio(channelData, buffer.getNumSamples());
        }

        // ..do something to the data...
    }

    
    
    
    // In case we have more outputs than inputs, we'll clear any output
    // channels that didn't contain input data, (because these aren't
    // guaranteed to be empty - they may contain garbage).
    for (int i = getNumInputChannels(); i < getNumOutputChannels(); ++i)
    {
        buffer.clear (i, 0, buffer.getNumSamples());
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
    DBG("CREATE EDITOR CALLED");
 //   editor = new SoundAnalyserAudioProcessorEditor (this,analyserTree);
 
    return new SoundAnalyserAudioProcessorEditor (this,analyserTree);
  //  return editor;
}

//==============================================================================
void SoundAnalyserAudioProcessor::getStateInformation (MemoryBlock& destData)
{
    DBG("GET STATE INFORMATION CALLED");
    
    DBG("ANALYSER TREE TYPE: " << analyserTree.getType().toString());
    // You should use this method to store your parameters in the memory block.
    // You could do that either as raw data, or use the XML or ValueTree classes
    // as intermediaries to make it easy to save and load complex data.
    
    /*

    // Create an outer XML element..
    XmlElement xml ("SoundAnalyserSettings");
    
    // add some attributes to it..
    xml.setAttribute ("sendRMS", analyser.sendRMS);
    xml.setAttribute ("sendPeak",analyser.sendPeak);
    xml.setAttribute ("sendSpectralCentroid",analyser.sendSpectralCentroid);
     */
    
    XmlElement xml(*analyserTree.createXml());
        
    // then use this helper function to stuff it into the binary blob and return it..
    copyXmlToBinary (xml, destData);
}

//==============================================================================
void SoundAnalyserAudioProcessor::setStateInformation (const void* data, int sizeInBytes)
{
    DBG("SET STATE INFORMATION CALLED");
    // You should use this method to restore your parameters from this memory block,
    // whose contents will have been created by the getStateInformation() call.
    

    ScopedPointer<XmlElement> xmlState (getXmlFromBinary (data, sizeInBytes));
    
    ValueTree newTree = ValueTree::fromXml(*xmlState);
    
    DBG("NEW TREE TYPE: " << newTree.getType().toString() << " WITH " << newTree.getNumChildren() << " CHILDREN");
    
    analyserTree.copyPropertiesFrom(newTree, nullptr);

    DBG("ANALYSER TREE TYPE: " << analyserTree.getType().toString() << " WITH " << analyserTree.getNumChildren() << " CHILDREN");
    
    analyserTree = newTree;
    
    DBG("ANALYSER TREE TYPE: " << analyserTree.getType().toString() << " WITH " << analyserTree.getNumChildren() << " CHILDREN");
    
    
    refreshFromTree();
    
    //((SoundAnalyserAudioProcessorEditor*)editor)->setValueTree(analyserTree);
    
    /*
    //newTree.fromXml(&xmlState);
    
    if (xmlState != nullptr)
    {
        // make sure that it's actually our type of XML object..
        if (xmlState->hasTagName ("SoundAnalyserSettings"))
        {            
            analyser.sendRMS = (bool) xmlState->getBoolAttribute("sendRMS",analyser.sendRMS);
            analyser.sendPeak = (bool) xmlState->getBoolAttribute("sendPeak",analyser.sendPeak);
            analyser.sendSpectralCentroid = (bool) xmlState->getBoolAttribute("sendSpectralCentroid",analyser.sendSpectralCentroid);
        }
    }*/
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
            analyser.setAnalyserIdString(treeWhosePropertyHasChanged[property].toString().toStdString());
        }
        // buffer size property
        else if (property == AnalysisModel::Ids::BufferSize)
        {
            analyser.setBufferSize(treeWhosePropertyHasChanged[property]);
        }
        else if (property == AnalysisModel::Ids::Port)
        {
            analyser.setOSCPort(treeWhosePropertyHasChanged[property]);
        }
        else if (property == AnalysisModel::Ids::IPAddress)
        {
            analyser.setIPAddress(treeWhosePropertyHasChanged[property].toString().toStdString());
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
        }
        // FFT numSamples
        else if (property == AnalysisProperties::FFT::numSamplesToSend)
        {
            for (int i = 0;i < analyser.audioAnalyses.size();i++)
            {
                if (AnalysisTypes::FFT == analyser.audioAnalyses[i]->getIdentifier())
                {
                    int numSamples = treeWhosePropertyHasChanged[AnalysisProperties::FFT::numSamplesToSend];
                    
                    // set num samples to send
                    ((FFTMagnitudeSpectrum*)analyser.audioAnalyses[i])->setNumFFTSamplesToSend(numSamples);
                }
            }
        }
        
        
    }
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded)
{
    DBG("ADDED NEW NODE IN PROCESSOR: " << childWhichHasBeenAdded.getType().toString())
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved)
{
    for (int i = 0;i < analyser.audioAnalyses.size();i++)
    {
        if (childWhichHasBeenRemoved.getType() == analyser.audioAnalyses[i]->getIdentifier())
        {
            analyser.audioAnalyses[i]->send = false;
            analyser.audioAnalyses[i]->plot = false;
            DBG("REMOVED ANALYSIS: " << analyser.audioAnalyses[i]->getIdentifier().toString());
        }
    }
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved)
{
    
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged)
{
    
}
