//
//  Pitch.h
//  SoundAnalyser
//
//  Created by Adam Stark on 14/04/2014.
//
//

#ifndef SoundAnalyser_MFCC_h
#define SoundAnalyser_MFCC_h

#include "AudioAnalysis.h"

class MelFrequencyCepstralCoefficients : public AudioAnalysis
{
public:
    
    //==============================================================================
    MelFrequencyCepstralCoefficients()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "MFCC";
    }
    
    //==============================================================================
    std::vector<float> performAnalysis_v(Gist<float> *g)
    {
        return g->melFrequencyCepstralCoefficients();
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/mfcc";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("MFCC");
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return VectorOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return GistInput;
    }
};

#endif
