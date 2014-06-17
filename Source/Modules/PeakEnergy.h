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
        peakEnergyOutputValue = 0.0;
    }
    
    //==============================================================================
    String getName()
    {
        return "Peak Energy";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> audioFrame)
    {
        peakEnergyOutputValue = tdf.peakEnergy(audioFrame);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return peakEnergyOutputValue;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/peakEnergy";
    }
        
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("PeakEnergy");
    }
    
    //==============================================================================
    Identifier getCollectionIdentifier()
    {
        return Identifier("Gist");
    }
    
    //==============================================================================
    String getCollectionName()
    {
        return "Gist";
    }
    
    //==============================================================================
    String getAuthorString()
    {
        return "Adam Stark";
    }
    
    //==============================================================================
    String getTechnicalDescription()
    {
        return "The maximum observed signal value in each audio frame";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "An indication of signal energy or loudness";
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
    
private:
    
    CoreTimeDomainFeatures<float> tdf;
    
    float peakEnergyOutputValue;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (PeakEnergy)
};

#endif /* defined(__SoundAnalyser__PeakEnergy__) */
