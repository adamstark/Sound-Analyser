//
//  RMS.h
//  SoundAnalyser
//
//  Created by Adam Stark on 02/12/2013.
//
//

#ifndef __SoundAnalyser__RMS__
#define __SoundAnalyser__RMS__

#include "../Audio Analysis/AudioAnalysis.h"
#include <cmath>

class RMS : public AudioAnalysis
{
public:
    
    //==============================================================================
    RMS() : RMSOutputValue(0.0)
    {
        
    }
    
    //==============================================================================
    String getName()
    {
        return "Root Mean Square (RMS)";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> audioFrame)
    {
        RMSOutputValue = tdf.rootMeanSquare(audioFrame);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return RMSOutputValue;
    }
        
    //==============================================================================
    std::string getCoreAddressPattern()
    {        
        return "/rms";
    }
        
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("RMS");
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
        return "The average signal energy observed in each audio frame";
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
    
    float RMSOutputValue;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (RMS)
};

#endif /* defined(__SoundAnalyser__RMS__) */
