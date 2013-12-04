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
    
    float performAnalysis_f(std::vector<float> buffer)
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
        
    std::string getCoreAddressPattern()
    {        
        return "/rms";
    }
    
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    Identifier getIdentifier()
    {
        return AnalysisTypes::RMS;
    }
    
    OutputType getOutputType()
    {
        return FloatOutput;
    }
    
    InputType getInputType()
    {
        return AudioBufferInput;
    }
};

#endif /* defined(__SoundAnalyser__RMS__) */
