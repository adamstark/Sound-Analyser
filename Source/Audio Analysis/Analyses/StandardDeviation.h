//
//  StandardDeviation.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef SoundAnalyser_StandardDeviation_h
#define SoundAnalyser_StandardDeviation_h

#include "AudioAnalysis.h"
#include <cmath>

class StandardDeviation : public AudioAnalysis
{
public:
    
    //==============================================================================
    StandardDeviation()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Standard Deviation";
    }
    
    //==============================================================================
    float performAnalysis_f(std::vector<float> buffer)
    {
        if (buffer.size() > 0)
        {
            // create variable to hold the sum
            float sum = 0;
            float mean;
            float std;
            float N = (float) buffer.size();
            
            // sum the  samples
            for (int i = 0;i < buffer.size();i++)
            {
                sum += buffer[i];
            }
            
            mean = sum / N;
            
            sum = 0;
            for (int i = 0;i < buffer.size();i++)
            {
                sum += fabs(buffer[i]-mean);
            }
            
            std = sqrt(sum / N);
            
            return std;
        }
        else
        {
            return 0.0;
        }
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/standardDeviation";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("StandardDeviation");
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return FloatOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return AudioBufferInput;
    }
};

#endif
