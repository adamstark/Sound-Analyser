//
//  RMS.h
//  SoundAnalyser
//
//  Created by Adam Stark on 02/12/2013.
//
//

#ifndef __SoundAnalyser__RMS__
#define __SoundAnalyser__RMS__

#include "AudioAnalysis.h"
#include <cmath>

class RMS : public AudioAnalysis
{
public:
    
    //==============================================================================
    RMS()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Root Mean Square (RMS)";
    }
    
    //==============================================================================    
    float performAnalysis_f(Gist<float> *g)
    {
        return g->rootMeanSquare();
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {        
        return "/rms";
    }
        
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("RMS");
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

#endif /* defined(__SoundAnalyser__RMS__) */
