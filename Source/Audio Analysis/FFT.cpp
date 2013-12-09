//
//  FFT.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 20/05/2013.
//
//

#include "FFT.h"

//==============================================================================
FFT::FFT(int _frameLength) : initialised(false)
{
    // store the frame length
    frameLength = _frameLength;
    
    // allocate memory and set up FFT
    initialise();
}

//==============================================================================
FFT::~FFT()
{
    // tidy up
    free(cfg);
    
    delete [] fftIn;
    fftIn = NULL;
    
    delete [] fftOut;
    fftOut = NULL;
}

//==============================================================================
void FFT::performFFT(std::vector<float> frame)
{
    // apply the hanning window
    for (int i = 0;i < frameLength;i++)
    {
        fftIn[i].r = frame[i] * window[i];
    }
    
    // calculate the FFT
    kiss_fft(cfg, fftIn, fftOut);
    
    // copy output samples to output vectors
    for (int i = 0;i < frameLength;i++)
    {
        real[i] = fftOut[i].r;
        imag[i] = fftOut[i].i;
    }
}

//==============================================================================
std::vector<float> FFT::getMagnitudeSpectrum()
{
    // create a vector to hold the first half of the magnitude spectrum
    std::vector<float> mag(real.size()/2);
    
    // for each sample
    for (int i = 0;i < mag.size();i++)
    {
        // calculate the magnitude spectrum sample as the
        // absolute value of the complex FFT output
        mag[i] = sqrt(pow(real[i],2) + pow(imag[i],2));
    }
    
    // return the magnitude spectrum
    return mag;
}
