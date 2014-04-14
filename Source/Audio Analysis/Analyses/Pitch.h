//
//  Pitch.h
//  SoundAnalyser
//
//  Created by Adam Stark on 14/04/2014.
//
//

#ifndef SoundAnalyser_PitchYin_h
#define SoundAnalyser_PitchYin_h

#include "AudioAnalysis.h"

class Pitch : public AudioAnalysis
{
public:
    
    //==============================================================================
    Pitch()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Pitch";
    }
    
    //==============================================================================
    float performAnalysis_f(Gist<float> *g)
    {
        return g->pitchYin();
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/pitch";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("Pitch");
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
