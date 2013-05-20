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
    AudioBuffer(int _bufferLength);
        
    void addNewSamplesToBuffer(float *samples,int numSamples);
    
    int getBufferLength();
    
    std::vector<float> buffer;
    
private:
    int bufferLength;
    
    
};

#endif /* defined(__SoundAnalyser__AudioBuffer__) */
