//
//  AudioAnalysisManager.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 19/05/2013.
//
//

#include "AudioAnalysisManager.h"

//==============================================================================
AudioAnalysisManager::AudioAnalysisManager() : audioBuffer(1024), fft(1024)
{
    sendRMS = false;
    sendPeak = false;
}

//==============================================================================
void AudioAnalysisManager::analyseAudio(float* buffer,int numSamples)
{
    // add new audio frame to our larger buffer
    audioBuffer.addNewSamplesToBuffer(buffer,numSamples);
    
    // calculate the FFT
    fft.performFFT(audioBuffer.buffer);
    
    if (sendRMS)
    {
        // calculate RMS
        float rms = audioFeatures.calculateRMS(audioBuffer.buffer);
        osc.send("/rms",rms);
    }
    
    if (sendPeak)
    {
        // calculate peak energy
        float peak = audioFeatures.calculatePeakEnergy(audioBuffer.buffer);
        osc.send("/peak",peak);
    }

    /*
    // calculate zero crossing rate
    float zcr = audioFeatures.calculateZeroCrossingRate(audioBuffer.buffer);    
    
    // calculate spectral centroid
    float spectralCentroid = audioFeatures.calculateSpectralCentroid(fft.getMagnitudeSpectrum());

 
    osc.send("/zcr",zcr);
    
    osc.send("/fft",fft.getMagnitudeSpectrum());
    
    
    osc.send("/spectralCentroid",spectralCentroid);
     */
    

}
