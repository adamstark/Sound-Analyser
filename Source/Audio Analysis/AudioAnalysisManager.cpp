//
//  AudioAnalysisManager.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 19/05/2013.
//
//

#include "AudioAnalysisManager.h"

//==============================================================================
AudioAnalysisManager::AudioAnalysisManager() : frameSize(1024), audioBuffer(frameSize), fft(frameSize), spectralDifference(frameSize)
{
    fftMagnitudeSpectrum.setNumFFTSamplesToSend(frameSize/2);
    
    audioAnalyses.add(&rms);
    audioAnalyses.add(&peakEnergy);
    audioAnalyses.add(&zcr);
    audioAnalyses.add(&spectralCentroid);
    audioAnalyses.add(&spectralDifference);
    audioAnalyses.add(&standardDeviation);
    audioAnalyses.add(&fftMagnitudeSpectrum);
    
    currentAnalysisToPlotType = FloatOutput;
    
    setAnalyserIdString("1");

    vectorPlot.resize(512);
    plotHistory.resize(512);
    
    for (int i = 0;i < 512;i++)
    {
        plotHistory[i] = 0;
        vectorPlot[i] = 0;
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
            if (audioAnalyses[i]->getOutputType() == FloatOutput)
            {
            
                float output;
                
                if (audioAnalyses[i]->getInputType() == AudioBufferInput)
                {
                    output = audioAnalyses[i]->performAnalysis_f(audioBuffer.buffer);
                }
                else if (audioAnalyses[i]->getInputType() == MagnitudeSpectrumInput)
                {
                    output = audioAnalyses[i]->performAnalysis_f(fft.getMagnitudeSpectrum());
                }
                else
                {
                    output = 0.0; // failsafe!
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
            else if (audioAnalyses[i]->getOutputType() == VectorOutput)
            {
                std::vector<float> output;
                
                if (audioAnalyses[i]->getInputType() == AudioBufferInput)
                {
                    output = audioAnalyses[i]->performAnalysis_v(audioBuffer.buffer);
                }
                else if (audioAnalyses[i]->getInputType() == MagnitudeSpectrumInput)
                {
                    output = audioAnalyses[i]->performAnalysis_v(fft.getMagnitudeSpectrum());
                }
                else
                {
                    // failsafe!
                    output.resize(1);
                    output[0] = 0.0;
                }
                
                if (audioAnalyses[i]->send)
                {
                    osc.send(audioAnalyses[i]->addressPattern.c_str(), output);
                }

                if (audioAnalyses[i]->plot)
                {
                    updateVectorPlot(output);
                }
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