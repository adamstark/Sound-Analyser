//
//  AudioFeatures.h
//  SoundAnalyser
//
//  Created by Adam Stark on 21/05/2013.
//
//

#ifndef __SoundAnalyser__AudioFeatures__
#define __SoundAnalyser__AudioFeatures__

#include <iostream>
#include <vector>
#include <cmath>

class AudioFeatures {
public:
    
    /** constructor */
    AudioFeatures(int frameSize);
    
    
    // ------------------ time domain features --------------------------
    
    float calculateRMS(std::vector<float> buffer);
    
    float calculatePeakEnergy(std::vector<float> buffer);
    
    float calculateZeroCrossingRate(std::vector<float> buffer);
    
    
    // ---------------- frequency domain features --------------------------
    
    float calculateSpectralCentroid(std::vector<float> magnitudeSpectrum);
    
    float calculateSpectralDifference(std::vector<float> magnitudeSpectrum);
    
    
private:
    
    std::vector<float> prevMagnitudeSpectrum;
    
};

#endif /* defined(__SoundAnalyser__AudioFeatures__) */
