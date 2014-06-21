//
//  SP_ChordDetector.h
//  Sound Analyser
//
//  Created by Adam Stark on 15/06/2014.
//
//

#ifndef Sound_Analyser_SP_ChordDetector_h
#define Sound_Analyser_SP_ChordDetector_h

#include "../Audio Analysis/AudioAnalysis.h"
#include "../Libraries/Stark-Plumbley/Chromagram.h"
#include "../Libraries/Stark-Plumbley/ChordDetector.h"

class SP_ChordDetector : public AudioAnalysis
{
public:
    
    //==============================================================================
    SP_ChordDetector(int frameSize,int samplingFrequency) : chroma(frameSize,samplingFrequency)
    {

    }
    
    //==============================================================================
    String getName()
    {
        return "Chord Detector";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> audioFrame)
    {
        std::vector<double> doublePrecisionBuffer(audioFrame.size());
        
        for (int i = 0;i < doublePrecisionBuffer.size();i++)
        {
            doublePrecisionBuffer[i] = (double) audioFrame[i];
        }
        
        chroma.processAudioFrame(doublePrecisionBuffer);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        std::vector<double> chromagram = chroma.getChromagram();
        
        chord.detectChord(chromagram);
        
        return (float) chord.rootNote;
    }
    
    //==============================================================================
    bool resultReady()
    {
        return chroma.isReady();
    }
    
    //==============================================================================
    void setSamplingFrequency(int fs)
    {
        chroma.setSamplingFrequency(fs);
    }
    
    //==============================================================================
    void setInputAudioFrameSize(int frameSize)
    {
        chroma.setInputAudioFrameSize(frameSize);
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/chordDetector";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("SP_ChordDetector");
    }
    
    //==============================================================================
    Identifier getCollectionIdentifier()
    {
        return Identifier("C4DMQMUL");
    }
    
    //==============================================================================
    String getCollectionName()
    {
        return "Queen Mary Univ. of London";
    }
    
    //==============================================================================
    String getAuthorString()
    {
        return "Adam Stark & Mark Plumbley";
    }
    
    //==============================================================================
    String getTechnicalDescription()
    {
        return "The root note from the chord detection algorithm presented by Stark and Plumbley (2009)";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "An estimation of the root note (C, C#, D, etc) of the input audio signal";
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return FloatOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return AudioBufferInput;
    }
    
private:
    
    Chromagram chroma;
    ChordDetector chord;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SP_ChordDetector)
};

#endif
