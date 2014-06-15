//
//  PeakEnergy.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef __SoundAnalyser__PeakEnergy__
#define __SoundAnalyser__PeakEnergy__

#include "AudioAnalysis.h"
#include <cmath>

class PeakEnergy : public AudioAnalysis
{
public:
    
    //==============================================================================
    PeakEnergy()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Peak Energy";
    }
    
    //==============================================================================
    float performAnalysis_f(Gist<float> *g)
    {
        return g->peakEnergy();
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/peakEnergy";
    }
        
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("PeakEnergy");
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

#endif /* defined(__SoundAnalyser__PeakEnergy__) */
