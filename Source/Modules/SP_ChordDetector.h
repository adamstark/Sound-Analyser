//
//  SP_ChordDetector.h
//  Sound Analyser
//
//  Created by Adam Stark on 15/06/2014.
//
//

#ifndef Sound_Analyser_SP_ChordDetector_h
#define Sound_Analyser_SP_ChordDetector_h

#include "../Audio Analysis/AudioAnalysis.h"
#include "../Libraries/Stark-Plumbley/Chromagram.h"
#include "../Libraries/Stark-Plumbley/ChordDetector.h"

class SP_ChordDetector : public AudioAnalysis
{
public:
    
    //==============================================================================
    SP_ChordDetector(int frameSize,int samplingFrequency) : chroma(frameSize,samplingFrequency)
    {

    }
    
    //==============================================================================
    String getName()
    {
        return "Chord Detector";
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
    float getAnalysisResultAsFloat()
    {
        std::vector<double> chromagram = chroma.getChromagram();
        
        chord.detectChord(chromagram);
        
        return (float) chord.rootNote;
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
        return "/chordDetector";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("SP_ChordDetector");
    }
    
    //==============================================================================
    Identifier getCollectionIdentifier()
    {
        return Identifier("C4DMQMUL");
    }
    
    //==============================================================================
    String getCollectionName()
    {
        return "Queen Mary University of London";
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
    
    Chromagram chroma;
    ChordDetector chord;
};

#endif
