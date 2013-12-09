//
//  FFTMagnitudeSpectrum.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef SoundAnalyser_FFTMagnitudeSpectrum_h
#define SoundAnalyser_FFTMagnitudeSpectrum_h

#include "AudioAnalysis.h"
#include <cmath>

class FFTMagnitudeSpectrum : public AudioAnalysis
{
public:
    FFTMagnitudeSpectrum()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    std::vector<float> performAnalysis_v(std::vector<float> magnitudeSpectrum)
    {
        std::vector<float> newSpec;
        
        newSpec.resize(numSamplesToSend);
        
        if (newSpec.size() <= magnitudeSpectrum.size())
        {
            for (int i = 0;i < newSpec.size();i++)
            {
                newSpec[i] = magnitudeSpectrum[i];
            }
        }
        else // <--- THIS SHOULDN'T HAPPEN
        {
            for (int i = 0;i < magnitudeSpectrum.size();i++)
            {
                newSpec[i] = magnitudeSpectrum[i];
            }
        
            for (int i = magnitudeSpectrum.size();i < newSpec.size();i++)
            {
                newSpec[i] = 0.0;
            }
        }
        
        return newSpec;
    }
    
    std::string getCoreAddressPattern()
    {
        return "/fft";
    }
    
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    Identifier getIdentifier()
    {
        return AnalysisTypes::FFT;
    }
    
    OutputType getOutputType()
    {
        return VectorOutput;
    }
    
    InputType getInputType()
    {
        return MagnitudeSpectrumInput;
    }
    
    void setNumFFTSamplesToSend(int numSamples)
    {
        numSamplesToSend = numSamples;
    }
    
private:
    int numSamplesToSend;
};

#endif
