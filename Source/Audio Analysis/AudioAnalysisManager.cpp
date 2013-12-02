//
//  AudioAnalysisManager.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 19/05/2013.
//
//

#include "AudioAnalysisManager.h"

//==============================================================================
AudioAnalysisManager::AudioAnalysisManager() : audioFeatures(1024), audioBuffer(1024), fft(1024)
{    
    sRMS.send = false;
    sRMS.plot = false;

    
    sPeakEnergy.send = false;
    sPeakEnergy.plot = false;

    
    sSpectralCentroid.send = false;
    sSpectralCentroid.plot = false;
    
    sZeroCrossingRate.send = false;
    sZeroCrossingRate.plot = false;
    
    sSpectralDifference.send = false;
    sSpectralDifference.plot = false;
    
    setAnalyserIdString("1");


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
    if (sRMS.send || sRMS.plot)
    {
        // calculate RMS
        float rms = audioFeatures.calculateRMS(audioBuffer.buffer);
        
        if (sRMS.send)
        {
            osc.send(sRMS.address_pattern.c_str(),rms);
        }
        
        if (sRMS.plot)
        {
            updatePlotHistory(rms);
        }
    }
    
    // --------------------- PEAK ENERGY ---------------------------
    if (sPeakEnergy.send || sPeakEnergy.plot)
    {
        // calculate peak energy
        float peak = audioFeatures.calculatePeakEnergy(audioBuffer.buffer);
        
        if (sPeakEnergy.send)
        {
            osc.send(sPeakEnergy.address_pattern.c_str(),peak);
        }
        
        if (sPeakEnergy.plot)
        {
            updatePlotHistory(peak);
        }
    }
    
    // ------------------- ZERO CROSSING RATE ------------------------
    if (sZeroCrossingRate.send || sZeroCrossingRate.plot)
    {
        float zeroCrossingRate = audioFeatures.calculateZeroCrossingRate(audioBuffer.buffer);
        
        if (sZeroCrossingRate.send)
        {
            osc.send(sZeroCrossingRate.address_pattern.c_str(), zeroCrossingRate);
        }
        
        if (sZeroCrossingRate.plot)
        {
            updatePlotHistory(zeroCrossingRate);
        }
    }
    
    // ------------------- SPECTRAL CENTROID ------------------------
    if (sSpectralCentroid.send || sSpectralCentroid.plot)
    {
        // calculate spectral centroid
        float spectralCentroid = audioFeatures.calculateSpectralCentroid(fft.getMagnitudeSpectrum());
        
        if (sSpectralCentroid.send)
        {
            osc.send(sSpectralCentroid.address_pattern.c_str(),spectralCentroid);
        }
        
        if (sSpectralCentroid.plot)
        {
            updatePlotHistory(spectralCentroid);
        }
  
    }
    
    // ------------------- SPECTRAL DIFFERENCE ------------------------
    if (sSpectralDifference.send || sSpectralDifference.plot)
    {
        float spectralDifference = audioFeatures.calculateSpectralDifference(fft.getMagnitudeSpectrum());
        
        if (sSpectralDifference.send)
        {
            osc.send(sSpectralDifference.address_pattern.c_str(), spectralDifference);
        }
        
        if (sSpectralDifference.plot)
        {
            updatePlotHistory(spectralDifference);
        }
    }

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