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
    Identifier getCollectionIdentifier()
    {
        return Identifier("Gist");
    }
    
    //==============================================================================
    String getCollectionName()
    {
        return "Gist";
    }
    
    //==============================================================================
    String getAuthorString()
    {
        return "Adam Stark";
    }
    
    //==============================================================================
    String getTechnicalDescription()
    {
        return "The centre of mass of the magnitude spectrum";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "A feature correlated with the brightness of a sound";
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
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SpectralCentroid)
};

#endif
