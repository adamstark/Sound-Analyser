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
        return magnitudeSpectrum;
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
    
    AnalysisDomain getDomainOfAnalysis()
    {
        return FREQDOMAIN;
    }
};

#endif
