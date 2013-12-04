//
//  Analysis.h
//  SoundAnalyser
//
//  Created by Adam Stark on 02/12/2013.
//
//

#ifndef __SoundAnalyser__Analysis__
#define __SoundAnalyser__Analysis__

#include <vector>
#include <string>
#include "AnalysisModel.h"

enum InputType
{
    AudioBufferInput,
    MagnitudeSpectrumInput
};

enum OutputType
{
    FloatOutput,
    VectorOutput
};

class AudioAnalysis
{
public:
    AudioAnalysis()
    {
        plot = false;
        send = false;
        addressPattern = "/uninitialised";
    }
    
    virtual ~AudioAnalysis()
    {
        
    }
    
    virtual std::string getCoreAddressPattern() = 0;
    
    virtual void buildAddressPatternFromId(std::string idWithForwardSlash) = 0;

    virtual float performAnalysis_f(std::vector<float> buffer)
    {
        return 0.0;
    }
    
    virtual std::vector<float> performAnalysis_v(std::vector<float> buffer)
    {
        std::vector<float> v;
        
        return v;
    }
    
    virtual InputType getInputType() = 0;
    
    virtual OutputType getOutputType() = 0;
    
    virtual Identifier getIdentifier() = 0;
        
    bool plot;
    bool send;
    std::string addressPattern;

    
};

#endif /* defined(__SoundAnalyser__Analysis__) */
