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
        addressPattern = getCoreAddressPattern();
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
};

#endif /* defined(__SoundAnalyser__RMS__) */
