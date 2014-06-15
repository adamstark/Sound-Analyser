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
#include "../Libraries/Stark-Plumbley/ChordDetector.h"

class SP_Chromagram : public AudioAnalysis
{
public:
    
    //==============================================================================
    SP_Chromagram(int frameSize) : chroma(frameSize,44100)
    {
        addressPattern = getCoreAddressPattern();
    }
    
    //==============================================================================
    String getName()
    {
        return "Chromagram";
    }
    
    //==============================================================================
    std::vector<float> performAnalysis_v(std::vector<float> buffer)
    {
        std::vector<double> dBuffer(buffer.size());
        
        for (int i = 0;i < dBuffer.size();i++)
        {
            dBuffer[i] = (double) buffer[i];
        }
        
        chroma.processAudioFrame(dBuffer);
        
        std::vector<double> chromagram = chroma.getChromagram();
        
        chord.detectChord(chromagram);
        
        std::vector<float> chromaFloat(12);
        
        for (int i = 0;i < 12;i++)
        {
            chromaFloat[i] = (float) chromagram[i];
        }
        
       // DBG("ROOT NOTE: " << chord.rootNote);
        
        return chromaFloat;
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
    ChordDetector chord;
};


#endif
