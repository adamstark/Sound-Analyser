//
//  ZeroCrossingRate.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef SoundAnalyser_ZeroCrossingRate_h
#define SoundAnalyser_ZeroCrossingRate_h

#include "AudioAnalysis.h"
#include <cmath>

class ZeroCrossingRate : public AudioAnalysis
{
public:
    
    //==============================================================================
    ZeroCrossingRate()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Zero Crossing Rate";
    }
    
    //==============================================================================
    float performAnalysis_f(std::vector<float> buffer)
    {
        // create a variable to hold the zero crossing rate
        float zcr;
        
        // for each audio sample, starting from the second one
        for (int i = 1;i < buffer.size();i++)
        {
            // initialise two booleans indicating whether or not
            // the current and previous sample are positive
            bool current = (buffer[i] > 0);
            bool previous = (buffer[i-1] > 0);
            
            // if the sign is different
            if (current != previous)
            {
                // add one to the zero crossing rate
                zcr = zcr + 1.0;
            }
        }
        
        // return the zero crossing rate
        return zcr;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/zcr";
    }
    
    //==============================================================================
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return AnalysisTypes::ZeroCrossingRate;
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
