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
#include "../../JuceLibraryCode/JuceHeader.h"

class AudioBuffer {
    
public:
    /** constructor */
    AudioBuffer(int bufferSize_);
        
    void addNewSamplesToBuffer(float *samples,int numSamples);
    
    void setBufferSize(int bufferSize_);
    
    int getBufferSize();
    
    std::vector<float> buffer;
    
    bool isReady();
    
private:
    int bufferSize;
    
    bool bufferReady;
    int numSamplesCollected;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(AudioBuffer)
    
};

#endif /* defined(__SoundAnalyser__AudioBuffer__) */
