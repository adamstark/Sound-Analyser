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
    analyserTree = AnalysisModel::createAnalyserTree();
    
    analyserTree.addListener(this);
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
       // case pSendRMS:                  return booleanToFloat(analyser.sendRMS); break;
       // case pSendPeak:                 return booleanToFloat(analyser.sendPeak); break;
       // case pSendSpectralCentroid:     return booleanToFloat(analyser.sendSpectralCentroid); break;
        default: return 0.0f;
    }
}

//==============================================================================
void SoundAnalyserAudioProcessor::setParameter (int index, float newValue)
{
    switch (index)
    {
       // case pSendRMS:              analyser.sendRMS = floatToBoolean(newValue);  break;
       // case pSendPeak:             analyser.sendPeak = floatToBoolean(newValue); break;
       // case pSendSpectralCentroid: analyser.sendSpectralCentroid = floatToBoolean(newValue); break;
        default:            break;
    }
}

//==============================================================================
const String SoundAnalyserAudioProcessor::getParameterName (int index)
{
    switch (index)
    {
//        case pSendRMS:                  return "Send RMS";
//        case pSendPeak:                 return "Send Peak Energy";
//        case pSendSpectralCentroid:     return "Send Spectral Centroid";
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
    return new SoundAnalyserAudioProcessorEditor (this,analyserTree);
}

//==============================================================================
void SoundAnalyserAudioProcessor::getStateInformation (MemoryBlock& destData)
{
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
    // You should use this method to restore your parameters from this memory block,
    // whose contents will have been created by the getStateInformation() call.
    

    ScopedPointer<XmlElement> xmlState (getXmlFromBinary (data, sizeInBytes));
    
    ValueTree newTree = ValueTree::fromXml(*xmlState);
    
    analyserTree.copyPropertiesFrom(newTree, nullptr);
    
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
    if (treeWhosePropertyHasChanged.getType() == AnalysisTypes::RMS)
    {
        if (property == AnalysisProperties::send)
        {            
            analyser.sRMS.send = treeWhosePropertyHasChanged[AnalysisProperties::send];
        }
        else if (property == AnalysisProperties::plot)
        {
            analyser.sRMS.plot = treeWhosePropertyHasChanged[AnalysisProperties::plot];
        }
    }
    else if (treeWhosePropertyHasChanged.getType() == AnalysisTypes::PeakEnergy)
    {
        if (property == AnalysisProperties::send)
        {
            analyser.sPeakEnergy.send = treeWhosePropertyHasChanged[AnalysisProperties::send];
        }
        else if (property == AnalysisProperties::plot)
        {
            analyser.sPeakEnergy.plot = treeWhosePropertyHasChanged[AnalysisProperties::plot];
        }
    }
    else if (treeWhosePropertyHasChanged.getType() == AnalysisTypes::SpectralCentroid)
    {
        if (property == AnalysisProperties::send)
        {
            analyser.sSpectralCentroid.send = treeWhosePropertyHasChanged[AnalysisProperties::send];
        }
        else if (property == AnalysisProperties::plot)
        {
            analyser.sSpectralCentroid.plot = treeWhosePropertyHasChanged[AnalysisProperties::plot];
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
    if (childWhichHasBeenRemoved.getType() == AnalysisTypes::RMS)
    {
        analyser.sRMS.send = false;
        analyser.sRMS.plot = false;
        DBG("RMS OFF");
    }
    else if (childWhichHasBeenRemoved.getType() == AnalysisTypes::PeakEnergy)
    {
        analyser.sPeakEnergy.send = false;
        analyser.sPeakEnergy.plot = false;
        DBG("PEAK ENERGY OFF");
    }
    else if (childWhichHasBeenRemoved.getType() == AnalysisTypes::SpectralCentroid)
    {
        analyser.sSpectralCentroid.send = false;
        analyser.sSpectralCentroid.plot = false;
        DBG("SPECTRAL CENTROID ENERGY OFF");
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
