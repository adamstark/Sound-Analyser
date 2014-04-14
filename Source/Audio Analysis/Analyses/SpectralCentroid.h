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
    float performAnalysis_f(Gist<float> *g)
    {
        return g->spectralCentroid();
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
        return GistInput;
    }
};

#endif
