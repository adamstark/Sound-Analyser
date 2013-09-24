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
    sRMS.send = false;
    sRMS.plot = false;

    
    sPeakEnergy.send = false;
    sPeakEnergy.plot = false;

    
    sSpectralCentroid.send = false;
    sSpectralCentroid.plot = false;

    
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
            osc.send("/rms",rms);
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
            osc.send("/peak",peak);
        }
        
        if (sPeakEnergy.plot)
        {
            updatePlotHistory(peak);
        }
    }
    
    // ------------------- SPECTRAL CENTROID ------------------------
    if (sSpectralCentroid.send || sSpectralCentroid.plot)
    {
        // calculate spectral centroid
        float spectralCentroid = audioFeatures.calculateSpectralCentroid(fft.getMagnitudeSpectrum());
        
        if (sSpectralCentroid.send)
        {
            osc.send("/spectralCentroid",spectralCentroid);
        }
        
        if (sSpectralCentroid.plot)
        {
            updatePlotHistory(spectralCentroid);
        }
  
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