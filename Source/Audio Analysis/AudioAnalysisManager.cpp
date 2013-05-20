//
//  AudioAnalysisManager.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 19/05/2013.
//
//

#include "AudioAnalysisManager.h"

//==============================================================================
AudioAnalysisManager::AudioAnalysisManager()
{
    
}

//==============================================================================
void AudioAnalysisManager::analyseAudio(float* buffer,int numSamples)
{
    // calculate RMS
    float rms = signalEnergy.calculateRMS(buffer, numSamples);
    
    osc.send("/rms",rms);
}