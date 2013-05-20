//
//  SignalEnergy.h
//  SoundAnalyser
//
//  Created by Adam Stark on 20/05/2013.
//
//

#ifndef __SoundAnalyser__SignalEnergy__
#define __SoundAnalyser__SignalEnergy__

#include <cmath>
#include <vector>

class SignalEnergy {
    
public:
    /** constructor */
    SignalEnergy();
    
    float calculateRMS(std::vector<float> buffer);
    
    float calculatePeak(float *buffer,int numSamples);
    
    
private:
    
};

#endif /* defined(__SoundAnalyser__SignalEnergy__) */
