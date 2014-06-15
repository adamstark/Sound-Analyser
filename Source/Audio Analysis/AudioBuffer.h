//
//  AudioBuffer.h
//  SoundAnalyser
//
//  Created by Adam Stark on 20/05/2013.
//
//

#ifndef __SoundAnalyser__AudioBuffer__
#define __SoundAnalyser__AudioBuffer__

#include <iostream>
#include <vector>

class AudioBuffer {
    
public:
    /** constructor */
    AudioBuffer(int bufferSize_);
        
    void addNewSamplesToBuffer(float *samples,int numSamples);
    
    void setBufferSize(int bufferSize_);
    
    int getBufferSize();
    
    std::vector<float> buffer;
    
    bool isReady()
    {
        return bufferReady;
    }
    
private:
    int bufferSize;
    
    bool bufferReady;
    int numSamplesCollected;
    
};

#endif /* defined(__SoundAnalyser__AudioBuffer__) */
