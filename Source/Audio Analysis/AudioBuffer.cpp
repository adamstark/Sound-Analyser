//=======================================================================
/** @file AudioBuffer.cpp
 *  @brief A class to manage the input audio buffer for audio analysis
 *  @author Adam Stark
 *  @copyright Copyright (C) 2014  Adam Stark
 *
 * This file is part of Sound Analyser.
 *
 * Sound Analyser is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Sound Analyser is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Sound Analyser.  If not, see <http://www.gnu.org/licenses/>.
 */
//=======================================================================

#include "AudioBuffer.h"

//==============================================================================
AudioBuffer::AudioBuffer(int bufferSize_) : bufferReady(false), numSamplesCollected(0)
{

}

void AudioBuffer::setBufferSize(int bufferSize_)
{
    // initialise buffer length
    bufferSize = bufferSize_;
    
    // resize the buffer vector to hold the right number of samples
    buffer.resize(bufferSize);
    
    // initialise the buffer to zeros
    for (int i = 0;i < bufferSize;i++)
    {
        buffer[i] = 0.0;
    }
}

//==============================================================================
void AudioBuffer::addNewSamplesToBuffer(float *samples,int numSamples)
{
    bufferReady = false;
    
    // if the number of new samples does not
    // exceed the buffer length
    if (numSamples <= bufferSize)
    {
        // shift back existing audio samples
        for (int k = 0;k < (bufferSize - numSamples);k++)
        {
            buffer[k] = buffer[k+numSamples];
        }
        
        // now copy the new samples to the remaining part of the buffer
        int j = 0;
        for (int k = bufferSize-numSamples;k < bufferSize;k++)
        {
            buffer[k] = samples[j];
            j++;
        }
        
        numSamplesCollected += numSamples;
        
        if (numSamplesCollected >= bufferSize)
        {
            bufferReady = true;
            numSamplesCollected = 0;
        }
    }
    else // otherwise we have more samples than our buffer can hold
    {
        // in this case, we will copy the most recent samples to the buffer
        for (int k = 0;k < bufferSize;k++)
        {
            buffer[k] = samples[numSamples-bufferSize+k];
        }
        
        bufferReady = true;
    }
}

//==============================================================================
int AudioBuffer::getBufferSize()
{
    return bufferSize;
}

//==============================================================================
bool AudioBuffer::isReady()
{
    return bufferReady;
}
