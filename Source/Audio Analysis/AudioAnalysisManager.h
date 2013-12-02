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
#include "OSCSender.h"
#include "AudioFeatures.h"
#include "FFT.h"
#include "AudioBuffer.h"
#include <iostream>

#include "AudioAnalysis.h"
#include "RMS.h"

typedef struct {
    bool plot;
    bool send;
    std::string address_pattern;
} AnalysisState;

class AudioAnalysisManager {

public:
    /** constructor */
    AudioAnalysisManager();
    
    /** passes the audio buffer through a number of analysis algorithms 
     * @param buffer the audio buffer containing the audio samples
     * @param numSamples the number of audio samples in the buffer
     */
    void analyseAudio(float* buffer,int numSamples);
            
    AnalysisState sRMS;
    AnalysisState sPeakEnergy;
    AnalysisState sSpectralCentroid;
    AnalysisState sZeroCrossingRate;
    AnalysisState sSpectralDifference;
    
    std::vector<float> plotHistory;
    
    void setAnalyserIdString(std::string analyserId)
    {
        std::string idWithSlash("/");
        
        idWithSlash = idWithSlash.append(analyserId);
        
        for (int i = 0;i < audioAnalyses.size();i++)
        {
            audioAnalyses[i]->buildAddressPatternFromId(idWithSlash);
        }
        
        sRMS.address_pattern = idWithSlash.append("/rms");
        sPeakEnergy.address_pattern = idWithSlash.append("/peakEnergy");
        sSpectralCentroid.address_pattern = idWithSlash.append("/spectralCentroid");
        sZeroCrossingRate.address_pattern = idWithSlash.append("/zcr");
        sSpectralDifference.address_pattern = idWithSlash.append("/SpectralDifference");
    }
    
private:
    
    void updatePlotHistory(float newSample);
    
    /** allows osc to be sent to a specific ip address and port number */
    OSCSender osc;
    
    /** an object for calculating audio features */
    AudioFeatures audioFeatures;
    
    AudioBuffer audioBuffer;
    
    /** an object for computing the fourier transform of audio frames */
    FFT fft;
    
    
    RMS rms;
    
    Array<AudioAnalysis*> audioAnalyses;
    

};

#endif /* defined(__SoundAnalyser__AudioAnalysisManager__) */
