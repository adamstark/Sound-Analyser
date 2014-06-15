//
//  MelFrequencySpectrum.h
//  Sound Analyser
//
//  Created by Adam Stark on 15/06/2014.
//
//

#ifndef __Sound_Analyser__MelFrequencySpectrum__
#define __Sound_Analyser__MelFrequencySpectrum__

#include "AudioAnalysis.h"

class MelFrequencySpectrum : public AudioAnalysis
{
public:
    
    //==============================================================================
    MelFrequencySpectrum()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Mel-frequency Spectrum";
    }
    
    //==============================================================================
    std::vector<float> performAnalysis_v(Gist<float> *g)
    {
        return g->melFrequencySpectrum();
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/melSpectrum";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("MelFrequencySpectrum");
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

#endif /* defined(__Sound_Analyser__MelFrequencySpectrum__) */
