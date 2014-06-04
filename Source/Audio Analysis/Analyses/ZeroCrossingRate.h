//
//  ZeroCrossingRate.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef SoundAnalyser_ZeroCrossingRate_h
#define SoundAnalyser_ZeroCrossingRate_h

#include "AudioAnalysis.h"
#include <cmath>

class ZeroCrossingRate : public AudioAnalysis
{
public:
    
    //==============================================================================
    ZeroCrossingRate()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Zero Crossing Rate";
    }
    
    //==============================================================================
    float performAnalysis_f(Gist<float> *g)
    {
        return g->zeroCrossingRate();
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/zcr";
    }

    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("ZeroCrossingRate");
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
