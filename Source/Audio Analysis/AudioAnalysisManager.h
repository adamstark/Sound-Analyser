//
//  AudioAnalysisManager.h
//  SoundAnalyser
//
//  Created by Adam Stark on 19/05/2013.
//
//

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
