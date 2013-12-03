//
//  AudioAnalysisManager.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 19/05/2013.
//
//

#include "AudioAnalysisManager.h"

//==============================================================================
AudioAnalysisManager::AudioAnalysisManager() : audioBuffer(frameSize), fft(frameSize), spectralDifference(frameSize), frameSize(1024)
{
    audioAnalyses.add(&rms);
    audioAnalyses.add(&peakEnergy);
    audioAnalyses.add(&zcr);
    audioAnalyses.add(&spectralCentroid);
    audioAnalyses.add(&spectralDifference);
    audioAnalyses.add(&standardDeviation);
    
    
    
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
    
    
    for (int i = 0;i < audioAnalyses.size();i++)
    {
        if (audioAnalyses[i]->send || audioAnalyses[i]->plot)
        {
            float output;
            
            if (audioAnalyses[i]->getDomainOfAnalysis() == TIMEDOMAIN)
            {
                output = audioAnalyses[i]->performAnalysis(audioBuffer.buffer);
            }
            else
            {
                output = audioAnalyses[i]->performAnalysis(fft.getMagnitudeSpectrum());
            }
            
            if (audioAnalyses[i]->send)
            {
                osc.send(audioAnalyses[i]->addressPattern.c_str(), output);
            }
            
            if (audioAnalyses[i]->plot)
            {
                updatePlotHistory(output);
            }
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