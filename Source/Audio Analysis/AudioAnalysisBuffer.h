//=======================================================================
/** @file AudioAnalysisBuffer.h
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

#ifndef _SOUNDANALYSER_AUDIOBUFFER_
#define _SOUNDANALYSER_AUDIOBUFFER_

#include <vector>
#include "../../JuceLibraryCode/JuceHeader.h"

//=======================================================================
/** A class to manage an audio buffer, which may be different to the host
 * audio frame size. It will fill with audio samples and then indicate it
 * is ready to be processed. This allows a consistent audio analysis buffer
 * size, even if the host frame size changes
 */
class AudioAnalysisBuffer {
    
public:
    /** Constructor */
    AudioAnalysisBuffer (int bufferSize_);
    
    /** Adds a number of new audio samples to the audio buffer
     * @param samples a pointer to an array containing the samples to add to the buffer
     * @param numSamples the number of samples in the array
     */
    void addNewSamplesToBuffer (float*samples, int numSamples);
    
    /** Sets the buffer size
     * @param bufferSize_ the new buffer size
     */
    void setBufferSize (int bufferSize_);
    
    /** @returns the buffer size */
    int getBufferSize();
    
    /** A vector to hold the audio buffer samples */
    std::vector<float> buffer;
    
    /** @returns true if the buffer is now full and ready for processing */
    bool isReady();
    
private:
    
    /** The buffer size */
    int bufferSize;
    
    /** A boolean indicating whether or not the buffer is full and ready for processing */
    bool bufferReady;
    
    /** Keeps a count of the number of samples collected */
    int numSamplesCollected;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (AudioAnalysisBuffer)
};

#endif /* defined(__SoundAnalyser__AudioBuffer__) */
