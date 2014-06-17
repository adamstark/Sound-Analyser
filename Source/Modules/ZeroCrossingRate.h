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
    ZeroCrossingRate() : zcrOutputValue(0.0)
    {

    }
    
    //==============================================================================
    String getName()
    {
        return "Zero Crossing Rate";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> audioFrame)
    {
        zcrOutputValue = tdf.zeroCrossingRate(audioFrame);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return zcrOutputValue;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/zcr";
    }

    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("ZeroCrossingRate");
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
        return "The count of zero crossings in each observed frame";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "A feature giving an indication of the brightness of a sound";
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
    
    float zcrOutputValue;
    CoreTimeDomainFeatures<float> tdf;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (ZeroCrossingRate)
};


#endif
