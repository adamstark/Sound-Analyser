//
//  Pitch.h
//  SoundAnalyser
//
//  Created by Adam Stark on 14/04/2014.
//
//

#ifndef SoundAnalyser_PitchYin_h
#define SoundAnalyser_PitchYin_h

#include "AudioAnalysis.h"

class Pitch : public AudioAnalysis
{
public:
    
    //==============================================================================
    Pitch(int frameSize, int sampleRate) : yin(sampleRate), pitchOutputValue(0.0)
    {

    }
    
    //==============================================================================
    String getName()
    {
        return "Pitch";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> audioFrame)
    {
        pitchOutputValue = yin.pitchYin(audioFrame);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return pitchOutputValue;
    }
    
    //==============================================================================
    void setSamplingFrequency(int fs)
    {
        yin.setSamplingFrequency(fs);
    }
    
    //==============================================================================
    void setInputAudioFrameSize(int frameSize)
    {

    }
        
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/pitch";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("Pitch");
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
    
    Yin<float> yin;
    
    float pitchOutputValue;
};

#endif
