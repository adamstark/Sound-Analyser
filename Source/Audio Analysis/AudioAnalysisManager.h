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
#include "FFT.h"
#include "AudioBuffer.h"
#include <iostream>

#include "AudioAnalysis.h"
#include "Analyses/RMS.h"
#include "Analyses/PeakEnergy.h"
#include "Analyses/ZeroCrossingRate.h"
#include "Analyses/SpectralCentroid.h"
#include "Analyses/SpectralDifference.h"
#include "Analyses/StandardDeviation.h"
#include "Analyses/FFTMagnitudeSpectrum.h"


class AudioAnalysisManager {

public:
    /** constructor */
    AudioAnalysisManager();
    
    /** passes the audio buffer through a number of analysis algorithms 
     * @param buffer the audio buffer containing the audio samples
     * @param numSamples the number of audio samples in the buffer
     */
    void analyseAudio(float* buffer,int numSamples);
                
    std::vector<float> plotHistory;
    
    void setAnalyserIdString(std::string analyserId)
    {
        std::string idWithSlash("/");
        
        idWithSlash = idWithSlash.append(analyserId);
        
        for (int i = 0;i < audioAnalyses.size();i++)
        {
            audioAnalyses[i]->buildAddressPatternFromId(idWithSlash);
        }
    }
    
    Array<AudioAnalysis*> audioAnalyses;
    
private:
    
    int frameSize;
    
    void updatePlotHistory(float newSample);
    
    /** allows osc to be sent to a specific ip address and port number */
    OSCSender osc;
    
    /** an object for calculating audio features */
   // AudioFeatures audioFeatures;
    
    AudioBuffer audioBuffer;
    
    /** an object for computing the fourier transform of audio frames */
    FFT fft;
    
    
    RMS rms;
    PeakEnergy peakEnergy;
    ZeroCrossingRate zcr;
    SpectralCentroid spectralCentroid;
    SpectralDifference spectralDifference;
    StandardDeviation standardDeviation;
    
    FFTMagnitudeSpectrum fftMagnitudeSpectrum;

};

#endif /* defined(__SoundAnalyser__AudioAnalysisManager__) */
