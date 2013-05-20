//
//  SignalEnergy.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 20/05/2013.
//
//

#include "SignalEnergy.h"

//==============================================================================
SignalEnergy::SignalEnergy()
{
    
}

//==============================================================================
float SignalEnergy::calculateRMS(std::vector<float> buffer)
{
    // create variable to hold the sum
    float sum = 0;
    
    // sum the squared samples
    for (int i = 0;i < buffer.size();i++)
    {
        sum += pow(buffer[i],2);
    }
    
    // return the square root of the mean of squared samples
    return sqrt(sum / ((float) buffer.size()));
}

//==============================================================================
float SignalEnergy::calculatePeak(float *buffer,int numSamples)
{
    return 0.0;
}