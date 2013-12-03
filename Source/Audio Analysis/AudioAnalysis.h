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

enum AnalysisDomain
{
    TIMEDOMAIN,
    FREQDOMAIN
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

    virtual float performAnalysis(std::vector<float> buffer) = 0;
    
    virtual AnalysisDomain getDomainOfAnalysis() = 0;
    
    virtual Identifier getIdentifier() = 0;
        
    bool plot;
    bool send;
    std::string addressPattern;

    
};

#endif /* defined(__SoundAnalyser__Analysis__) */
