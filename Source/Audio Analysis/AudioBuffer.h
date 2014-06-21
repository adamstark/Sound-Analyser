//=======================================================================
/** @file AudioBuffer.h
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
