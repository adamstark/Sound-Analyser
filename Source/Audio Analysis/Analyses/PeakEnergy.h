//
//  PeakEnergy.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef __SoundAnalyser__PeakEnergy__
#define __SoundAnalyser__PeakEnergy__

#include "AudioAnalysis.h"
#include <cmath>

class PeakEnergy : public AudioAnalysis
{
public:
    
    //==============================================================================
    PeakEnergy()
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Peak Energy";
    }
    
    //==============================================================================
    float performAnalysis_f(std::vector<float> buffer)
    {
        // create variable with very small value to hold the peak value
        float peak = -10000.0;
        
        // for each audio sample
        for (int i = 0;i < buffer.size();i++)
        {
            // store the absolute value of the sample
            float absSample = fabs(buffer[i]);
            
            // if the absolute value is larger than the peak
            if (absSample > peak)
            {
                // the peak takes on the sample value
                peak = absSample;
            }
        }
        
        // return the peak value
        return peak;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/peakEnergy";
    }
    
    //==============================================================================
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return AnalysisTypes::PeakEnergy;
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

#endif /* defined(__SoundAnalyser__PeakEnergy__) */
