//
//  SpectralCentroid.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef SoundAnalyser_SpectralCentroid_h
#define SoundAnalyser_SpectralCentroid_h

#include "AudioAnalysis.h"
#include <cmath>

class SpectralCentroid : public AudioAnalysis
{
public:
    
    //==============================================================================
    SpectralCentroid()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Spectral Centroid";
    }
    
    //==============================================================================
    float performAnalysis_f(std::vector<float> magnitudeSpectrum)
    {
        // to hold sum of amplitudes
        float sumAmplitudes = 0.0;
        
        // to hold sum of weighted amplitudes
        float sumWeightedAmplitudes = 0.0;
        
        // for each bin in the first half of the magnitude spectrum
        for (int i = 0;i < magnitudeSpectrum.size()/2;i++)
        {
            // sum amplitudes
            sumAmplitudes += magnitudeSpectrum[i];
            
            // sum amplitudes weighted by the bin number
            sumWeightedAmplitudes += magnitudeSpectrum[i]*i;
        }
        
        // the spectral centroid is the sum of weighted amplitudes divided by the sum of amplitdues
        return sumWeightedAmplitudes / sumAmplitudes;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/spectralCentroid";
    }
    
    //==============================================================================
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return AnalysisTypes::SpectralCentroid;
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return FloatOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return MagnitudeSpectrumInput;
    }
};

#endif
