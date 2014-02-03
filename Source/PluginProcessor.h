/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic startup code for a Juce application.

  ==============================================================================
*/

#ifndef __PLUGINPROCESSOR_H_FF438757__
#define __PLUGINPROCESSOR_H_FF438757__

#include "../JuceLibraryCode/JuceHeader.h"
#include "AudioAnalysisManager.h"
#include "AnalysisModel.h"


//==============================================================================
/**
*/
class SoundAnalyserAudioProcessor  : public AudioProcessor, public ValueTree::Listener
{
public:
    //==============================================================================
    SoundAnalyserAudioProcessor();
    ~SoundAnalyserAudioProcessor();

    //==============================================================================
    void prepareToPlay (double sampleRate, int samplesPerBlock);
    void releaseResources();

    void processBlock (AudioSampleBuffer& buffer, MidiBuffer& midiMessages);

    //==============================================================================
    AudioProcessorEditor* createEditor();
    bool hasEditor() const;

    //==============================================================================
    const String getName() const;

    int getNumParameters();

    float getParameter (int index);
    void setParameter (int index, float newValue);

    const String getParameterName (int index);
    const String getParameterText (int index);

    const String getInputChannelName (int channelIndex) const;
    const String getOutputChannelName (int channelIndex) const;
    bool isInputChannelStereoPair (int index) const;
    bool isOutputChannelStereoPair (int index) const;

    bool acceptsMidi() const;
    bool producesMidi() const;
    bool silenceInProducesSilenceOut() const;
    double getTailLengthSeconds() const;

    //==============================================================================
    int getNumPrograms();
    int getCurrentProgram();
    void setCurrentProgram (int index);
    const String getProgramName (int index);
    void changeProgramName (int index, const String& newName);

    //==============================================================================
    void getStateInformation (MemoryBlock& destData);
    void setStateInformation (const void* data, int sizeInBytes);
    
    
    void refreshFromTree()
    {
        analyser.setBufferSize(analyserTree[AnalysisModel::Ids::BufferSize]);
        
        analyser.setOSCPort(analyserTree[AnalysisModel::Ids::Port]);
        
        analyser.setIPAddress(analyserTree[AnalysisModel::Ids::IPAddress].toString().toStdString());

        
        for (int i = 0;i < analyser.audioAnalyses.size();i++)
        {
            ValueTree tree = analyserTree.getChildWithName(analyser.audioAnalyses[i]->getIdentifier());
            
            analyser.audioAnalyses[i]->send = tree[AnalysisProperties::send];
            analyser.audioAnalyses[i]->plot = tree[AnalysisProperties::plot];
            
            if (tree.getType() == AnalysisTypes::FFT)
            {
                int numSamples = tree[AnalysisProperties::FFT::numSamplesToSend];
                ((FFTMagnitudeSpectrum*)analyser.audioAnalyses[i])->setNumFFTSamplesToSend(numSamples);
            }
        }
    }
    
    void valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property);
    void valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded);
    void valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved);
    void valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved);
    void valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged);
    
    
    enum Parameters
    {
        totalNumParams = 0
    };
    
    float booleanToFloat(bool input);
    bool floatToBoolean(float input);
    
    ValueTree analyserTree;
    
    AudioAnalysisManager analyser;
    
private:
        

    
    
    
    //==============================================================================
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SoundAnalyserAudioProcessor)
};

#endif  // __PLUGINPROCESSOR_H_FF438757__
