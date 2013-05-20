//
//  FFT.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 20/05/2013.
//
//

#include "FFT.h"

//==============================================================================
FFT::FFT(int _frameLength)
{
    // initialise the frame length
    frameLength = _frameLength;
    
    // initialise FFT input and output arrays
    fftIn = new kiss_fft_cpx[frameLength];
    fftOut = new kiss_fft_cpx[frameLength];
    
    // initialise input frame to be initially zero
    for (int i = 0;i < frameLength;i++)
    {
        fftIn[i].r = 0.0;
        fftIn[i].i = 0.0;
    }
    
    // initialise FFT configuration
    cfg = kiss_fft_alloc(frameLength,0,0,0);
    
    // resize the window vector so it is large enough to hold the window
    window.resize(frameLength);
    
    // calculate the hanning window and store it in the vector
    for (int i = 0;i < frameLength;i++)
    {
        window[i] = 0.5 * (1.0 - cos(2.0*M_PI*(((float)(i+1))/((float)frameLength))));
    }
    
    // resize output vectors
    real.resize(frameLength);
    imag.resize(frameLength);
}

//==============================================================================
FFT::~FFT()
{
    // tidy up
    free(cfg);
    
    delete [] fftIn;
    delete [] fftOut;
}

//==============================================================================
void FFT::performFFT(float *frame)
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
