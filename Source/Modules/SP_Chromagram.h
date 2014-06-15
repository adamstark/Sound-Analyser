//
//  SP_Chromagram.h
//  Sound Analyser
//
//  Created by Adam Stark on 15/06/2014.
//
//

#ifndef Sound_Analyser_SP_Chromagram_h
#define Sound_Analyser_SP_Chromagram_h

#include "AudioAnalysis.h"
#include "../Libraries/Stark-Plumbley/Chromagram.h"

class SP_Chromagram : public AudioAnalysis 
{
public:
    
    //==============================================================================
    SP_Chromagram(int frameSize,int samplingFrequency) : chroma(frameSize,samplingFrequency)
    {

    }
    
    //==============================================================================
    String getName()
    {
        return "Chromagram";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> audioFrame)
    {
        std::vector<double> doublePrecisionBuffer(audioFrame.size());
        
        for (int i = 0;i < doublePrecisionBuffer.size();i++)
        {
            doublePrecisionBuffer[i] = (double) audioFrame[i];
        }
        
        chroma.processAudioFrame(doublePrecisionBuffer);
    }
    
    //==============================================================================
    std::vector<float> getAnalysisResultAsVector()
    {
        std::vector<double> chromagram = chroma.getChromagram();
        
        std::vector<float> chromaFloat(12);
        
        for (int i = 0;i < 12;i++)
        {
            chromaFloat[i] = (float) chromagram[i];
        }
        
        return chromaFloat;
    }
    
    //==============================================================================
    bool resultReady()
    {
        return chroma.isReady();
    }
    
    //==============================================================================
    void setSamplingFrequency(int fs)
    {
        chroma.setSamplingFrequency(fs);
    }
    
    //==============================================================================
    void setInputAudioFrameSize(int frameSize)
    {
        chroma.setInputAudioFrameSize(frameSize);
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/chromagram";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("SP_Chromagram");
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return VectorOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return AudioBufferInput;
    }
    
private:
    
    Chromagram chroma;
};


#endif
