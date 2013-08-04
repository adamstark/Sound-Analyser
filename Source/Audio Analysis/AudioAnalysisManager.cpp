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
    sendSpectralCentroid = false;
    
    plotHistory.resize(512);
    
    for (int i = 0;i < 512;i++)
    {
        plotHistory[i] = 0;
    }
}

//==============================================================================
void AudioAnalysisManager::analyseAudio(float* buffer,int numSamples)
{
    // add new audio frame to our larger buffer
    audioBuffer.addNewSamplesToBuffer(buffer,numSamples);
    
    // calculate the FFT
    fft.performFFT(audioBuffer.buffer);
    
    // ------------------------ RMS -------------------------------
    if (sendRMS)
    {
        // calculate RMS
        float rms = audioFeatures.calculateRMS(audioBuffer.buffer);
        osc.send("/rms",rms);
        
        
    }
    
    // --------------------- PEAK ENERGY ---------------------------
    if (sendPeak)
    {
        // calculate peak energy
        float peak = audioFeatures.calculatePeakEnergy(audioBuffer.buffer);
        osc.send("/peak",peak);
    }
    
    // ------------------- SPECTRAL CENTROID ------------------------
    if (sendSpectralCentroid)
    {
        // calculate spectral centroid
        float spectralCentroid = audioFeatures.calculateSpectralCentroid(fft.getMagnitudeSpectrum());
        osc.send("/spectralCentroid",spectralCentroid);
        
        updatePlotHistory(spectralCentroid);
    }


    /*
    // calculate zero crossing rate
    float zcr = audioFeatures.calculateZeroCrossingRate(audioBuffer.buffer);    
    
    
 
    osc.send("/zcr",zcr);
    
    osc.send("/fft",fft.getMagnitudeSpectrum());
    
    
   
     */
    

}

//==============================================================================
void AudioAnalysisManager::updatePlotHistory(float newSample)
{
    int N = plotHistory.size();
    
    for (int i = 0; i < N-1;i++)
    {
        plotHistory[i] = plotHistory[i+1];
    }
    
    plotHistory[N-1] = newSample;
}