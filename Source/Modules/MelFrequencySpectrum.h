//
//  MelFrequencySpectrum.h
//  Sound Analyser
//
//  Created by Adam Stark on 15/06/2014.
//
//

#ifndef __Sound_Analyser__MelFrequencySpectrum__
#define __Sound_Analyser__MelFrequencySpectrum__

#include "AudioAnalysis.h"

class MelFrequencySpectrum : public AudioAnalysis
{
public:
    
    //==============================================================================
    MelFrequencySpectrum(int frameSize,int samplingFrequency) : mfcc(frameSize,samplingFrequency)
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Mel-frequency Spectrum";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> magnitudeSpectrum)
    {
        mfccOutput = mfcc.melFrequencySpectrum(magnitudeSpectrum);
    }
    
    //==============================================================================
    std::vector<float> getAnalysisResultAsVector()
    {
        return mfccOutput;
    }
    
    //==============================================================================
    void setSamplingFrequency(int fs)
    {
        mfcc.setSamplingFrequency(44100);
    }
    
    //==============================================================================
    void setInputAudioFrameSize(int frameSize)
    {
        mfcc.setFrameSize(frameSize);
    }
        
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/melSpectrum";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("MelFrequencySpectrum");
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return VectorOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return MagnitudeSpectrumInput;
    }
    
private:
    
    MFCC<float> mfcc;
    std::vector<float> mfccOutput;
};

#endif /* defined(__Sound_Analyser__MelFrequencySpectrum__) */
