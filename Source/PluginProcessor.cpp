/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic startup code for a Juce application.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"


//==============================================================================
SoundAnalyserAudioProcessor::SoundAnalyserAudioProcessor()
{

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
        case pSendRMS:  return booleanToFloat(analyser.sendRMS); break;
        case pSendPeak: return booleanToFloat(analyser.sendPeak); break;
        default: return 0.0f;
    }
}

//==============================================================================
void SoundAnalyserAudioProcessor::setParameter (int index, float newValue)
{
    switch (index)
    {
        case pSendRMS:     analyser.sendRMS = floatToBoolean(newValue);  break;
        case pSendPeak:    analyser.sendPeak = floatToBoolean(newValue); break;
        default:            break;
    }
}

//==============================================================================
const String SoundAnalyserAudioProcessor::getParameterName (int index)
{
    switch (index)
    {
        case pSendRMS:     return "Send RMS";
        case pSendPeak:    return "Send Peak Energy";
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
    return new SoundAnalyserAudioProcessorEditor (this);
}

//==============================================================================
void SoundAnalyserAudioProcessor::getStateInformation (MemoryBlock& destData)
{
    // You should use this method to store your parameters in the memory block.
    // You could do that either as raw data, or use the XML or ValueTree classes
    // as intermediaries to make it easy to save and load complex data.
}

//==============================================================================
void SoundAnalyserAudioProcessor::setStateInformation (const void* data, int sizeInBytes)
{
    // You should use this method to restore your parameters from this memory block,
    // whose contents will have been created by the getStateInformation() call.
}

//==============================================================================
// This creates new instances of the plugin..
AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new SoundAnalyserAudioProcessor();
}
