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
    SpectralCentroid() : spectralCentroidOutputValue(0.0)
    {

    }
    
    //==============================================================================
    String getName()
    {
        return "Spectral Centroid";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> magnitudeSpectrum)
    {
        spectralCentroidOutputValue = fdf.spectralCentroid(magnitudeSpectrum);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return spectralCentroidOutputValue;
    }
        
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/spectralCentroid";
    }
        
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("SpectralCentroid");
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
    
private:
    
    CoreFrequencyDomainFeatures<float> fdf;
    
    float spectralCentroidOutputValue;
};

#endif
