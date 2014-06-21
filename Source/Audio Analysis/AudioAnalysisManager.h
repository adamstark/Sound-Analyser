//=======================================================================
/** @file AudioAnalysisManager.h
 *  @brief A class to manage audio input and all audio analysis modules
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

#ifndef __SoundAnalyser__AudioAnalysisManager__
#define __SoundAnalyser__AudioAnalysisManager__

#include "../JuceLibraryCode/JuceHeader.h"
#include "../OSC/Osc.h"
#include "AudioBuffer.h"
#include <iostream>

#include "../Libraries/Gist/src/Gist.h"

#include "AudioAnalysis.h"
#include "../Modules/RMS.h"
#include "../Modules/PeakEnergy.h"
#include "../Modules/ZeroCrossingRate.h"
#include "../Modules/SpectralCentroid.h"
#include "../Modules/SpectralDifference.h"
#include "../Modules/FFTMagnitudeSpectrum.h"
#include "../Modules/Pitch.h"
#include "../Modules/MelFrequencySpectrum.h"
#include "../Modules/SP_Chromagram.h"
#include "../Modules/SP_ChordDetector.h"

#include <speex/speex_resampler.h>

#define DEFAULT_SAMPLING_FREQUENCY 44100

class AudioAnalysisManager {

public:
    /** constructor */
    AudioAnalysisManager(int bufferSize_);
    
    /** passes the audio buffer through a number of analysis algorithms 
     * @param buffer the audio buffer containing the audio samples
     * @param numSamples the number of audio samples in the buffer
     */
    void analyseAudio(float* buffer,int numSamples);

    void setAnalyserIdString(std::string analyserId);
    
    void setBufferSize(int bufferSize_);
    
    void setOSCPort(int oscPort);
    
    void setIPAddress(std::string IPAddress);
    
    void setSamplingFrequency(int fs);
    
    void setHostFrameSize(int frameSize);
    
    OwnedArray<AudioAnalysis> audioAnalyses;
    
    OutputType currentAnalysisToPlotType;
    
    std::vector<float> plotHistory;
    std::vector<float> vectorPlot;
    
private:
 
    void updatePlotHistory(float newSample);
    
    void addAudioAnalysisAlgorithms();
    
    std::vector<float> resamplePlot(std::vector<float> v);
    
    void updateVectorPlot(std::vector<float> v);
    
    int bufferSize;
    
    /** allows osc to be sent to a specific ip address and port number */
    Osc osc;
            
    AudioBuffer audioBuffer;
    
    Gist<float> gist;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (AudioAnalysisManager)

};

#endif /* defined(__SoundAnalyser__AudioAnalysisManager__) */
