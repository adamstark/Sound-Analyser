//
//  AudioBuffer.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 20/05/2013.
//
//

#include "AudioBuffer.h"

//==============================================================================
AudioBuffer::AudioBuffer(int _bufferLength)
{
    // initialise buffer length
    bufferLength = _bufferLength;
    
    // resize the buffer vector to hold the right number of samples
    buffer.resize(bufferLength);
    
    // initialise the buffer to zeros
    for (int i = 0;i < bufferLength;i++)
    {
        buffer[i] = 0.0;
    }
}

//==============================================================================
void AudioBuffer::addNewSamplesToBuffer(float *samples,int numSamples)
{    
    // if the number of new samples does not
    // exceed the buffer length
    if (numSamples <= bufferLength)
    {
        // shift back existing audio samples
        for (int k = 0;k < (bufferLength - numSamples);k++)
        {
            buffer[k] = buffer[k+numSamples];
        }
        
        // now copy the new samples to the remaining part of the buffer
        int j = 0;
        for (int k = bufferLength-numSamples;k < bufferLength;k++)
        {
            buffer[k] = samples[j];
            j++;
        }
    }
    else // otherwise we have more samples than our buffer can hold
    {
        // in this case, we will copy the most recent samples to the buffer
        for (int k = 0;k < bufferLength;k++)
        {
            buffer[k] = samples[numSamples-bufferLength+k];
        }
    }
}

//==============================================================================
int AudioBuffer::getBufferLength()
{
    return bufferLength;
}