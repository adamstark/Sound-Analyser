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
    RMS()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    float performAnalysis(std::vector<float> buffer)
    {
        // create variable to hold the sum
        float sum = 0;
        
        // sum the squared samples
        for (int i = 0;i < buffer.size();i++)
        {
            sum += pow(buffer[i],2);
        }
        
        // return the square root of the mean of squared samples
        return sqrt(sum / ((float) buffer.size()));
    }
    
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    std::string getCoreAddressPattern()
    {        
        return "/rms";
    }
    
    AnalysisDomain getDomainOfAnalysis()
    {
        return TIMEDOMAIN;
    }
};

#endif /* defined(__SoundAnalyser__RMS__) */
