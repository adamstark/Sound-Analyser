//
//  AudioFeatures.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 21/05/2013.
//
//

#include "AudioFeatures.h"

//==============================================================================
AudioFeatures::AudioFeatures(int frameSize)
{
    prevMagnitudeSpectrum.resize(frameSize);
    
    for (int i = 0;i < prevMagnitudeSpectrum.size();i++)
    {
        prevMagnitudeSpectrum[i] = 0;
    }
}

//==============================================================================//
//=========================== TIME DOMAIN FEATURES =============================//
//==============================================================================//

//==============================================================================
float AudioFeatures::calculateRMS(std::vector<float> buffer)
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
float AudioFeatures::calculatePeakEnergy(std::vector<float> buffer)
{
    // create variable with very small value to hold the peak value
    float peak = -10000.0;
    
    // for each audio sample
    for (int i = 0;i < buffer.size();i++)
    {
        // store the absolute value of the sample
        float absSample = fabs(buffer[i]);
        
        // if the absolute value is larger than the peak
        if (absSample > peak)
        {
            // the peak takes on the sample value
            peak = absSample;
        }
    }
    
    // return the peak value
    return peak;
}

//==============================================================================
float AudioFeatures::calculateZeroCrossingRate(std::vector<float> buffer)
{
    // create a variable to hold the zero crossing rate
    float zcr;
    
    // for each audio sample, starting from the second one
    for (int i = 1;i < buffer.size();i++)
    {
        // initialise two booleans indicating whether or not
        // the current and previous sample are positive
        bool current = (buffer[i] > 0);
        bool previous = (buffer[i-1] > 0);
        
        // if the sign is different
        if (current != previous)
        {
            // add one to the zero crossing rate
            zcr = zcr + 1.0;
        }
    }
    
    // return the zero crossing rate
    return zcr;
}

//==============================================================================//
//========================= FREQUENCY DOMAIN FEATURES ==========================//
//==============================================================================//


//==============================================================================
float AudioFeatures::calculateSpectralCentroid(std::vector<float> magnitudeSpectrum)
{
    // to hold sum of amplitudes
    float sumAmplitudes = 0.0;
    
    // to hold sum of weighted amplitudes
    float sumWeightedAmplitudes = 0.0;
    
    // for each bin in the first half of the magnitude spectrum
    for (int i = 0;i < magnitudeSpectrum.size()/2;i++)
    {
        // sum amplitudes
        sumAmplitudes += magnitudeSpectrum[i];
        
        // sum amplitudes weighted by the bin number
        sumWeightedAmplitudes += magnitudeSpectrum[i]*i;
    }
    
    // the spectral centroid is the sum of weighted amplitudes divided by the sum of amplitdues
    return sumWeightedAmplitudes / sumAmplitudes;
}

//==============================================================================
float AudioFeatures::calculateSpectralDifference(std::vector<float> magnitudeSpectrum)
{
    float sum = 0;	// initialise sum to zero
    
	for (int i = 0;i < magnitudeSpectrum.size();i++)
	{
		// calculate difference
		float diff = magnitudeSpectrum[i] - prevMagnitudeSpectrum[i];
		
		// ensure all difference values are positive
		if (diff < 0)
		{
			diff = diff*-1;
		}
		
		// add difference to sum
		sum = sum+diff;
        
        prevMagnitudeSpectrum[i] = magnitudeSpectrum[i];
	}
	
	return sum;
}