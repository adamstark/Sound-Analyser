//=======================================================================
/** @file PluginProcessor.cpp
 *  @brief The top level audio processing class for the Sound Analyser
 *  @author Adam Stark
 *  @copyright Copyright (C) 2014  Adam Stark
 *
 * This file is part of Sound Analyser.
 *
 * Sound Analyser is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Sound Analyser is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Sound Analyser.  If not, see <http://www.gnu.org/licenses/>.
 */
//=======================================================================

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
void SoundAnalyserAudioProcessor::refreshFromTree()
{
    analyser.setBufferSize(analyserTree[AnalysisModel::Ids::BufferSize]);
    
    analyser.setOSCPort(analyserTree[AnalysisModel::Ids::Port]);
    
    analyser.setIPAddress(analyserTree[AnalysisModel::Ids::IPAddress].toString().toStdString());
    
    
    for (int i = 0;i < analyser.audioAnalyses.size();i++)
    {
        ValueTree tree = analyserTree.getChildWithName(analyser.audioAnalyses[i]->getIdentifier());
        
        analyser.audioAnalyses[i]->initialise(tree);
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
    return 0;
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
    
    analyser.setSamplingFrequency((int) sampleRate);
    analyser.setHostFrameSize(samplesPerBlock);
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
        float* channelData = buffer.getWritePointer (channel);
        
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
 //   editor = new SoundAnalyserAudioProcessorEditor (this,analyserTree);
 
    return new SoundAnalyserAudioProcessorEditor (this,analyserTree);
  //  return editor;
}

//==============================================================================
void SoundAnalyserAudioProcessor::getStateInformation (MemoryBlock& destData)
{
    ScopedPointer<XmlElement> xml = analyserTree.createXml();
    
    // then use this helper function to stuff it into the binary blob and return it..
    copyXmlToBinary (*xml, destData);
}

//==============================================================================
void SoundAnalyserAudioProcessor::setStateInformation (const void* data, int sizeInBytes)
{
    ScopedPointer<XmlElement> xmlState (getXmlFromBinary (data, sizeInBytes));
    
    analyserTree = ValueTree::fromXml(*xmlState);
    
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
            
            // clear the plot history 
            analyser.clearPlotHistory();
        }
        else // deal with custom properties here
        {
            for (int i = 0;i < analyser.audioAnalyses.size();i++)
            {
                if (treeWhosePropertyHasChanged.getType() == analyser.audioAnalyses[i]->getIdentifier())
                {
                    analyser.audioAnalyses[i]->handleCustomPropertyChange(treeWhosePropertyHasChanged, property);
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
void SoundAnalyserAudioProcessor::valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved)
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
void SoundAnalyserAudioProcessor::valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved)
{
    
}

//==============================================================================
void SoundAnalyserAudioProcessor::valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged)
{
    
}
