//
//  SpectralDifference.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef SoundAnalyser_SpectralDifference_h
#define SoundAnalyser_SpectralDifference_h

class SpectralDifference : public AudioAnalysis
{
public:
    
    //==============================================================================
    SpectralDifference(int frameSize)
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Spectral Difference";
    }
        
    //==============================================================================    
    float performAnalysis_f(Gist<float> *g)
    {
        return g->spectralDifference();
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/spectralDifference";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("SpectralDifference");
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
