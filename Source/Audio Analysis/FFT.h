//
//  FFT.h
//  SoundAnalyser
//
//  Created by Adam Stark on 20/05/2013.
//
//

#ifndef __SoundAnalyser__FFT__
#define __SoundAnalyser__FFT__

#include <iostream>
#include <vector>
#include <cmath>
#include "kiss_fft.h"

class FFT {
  
public:
    /** constructor */
    FFT(int frameLength);
    ~FFT();
    
    void initialise()
    {
        if (initialised)
        {
            // tidy up
            free(cfg);
            
            delete [] fftIn;
            delete [] fftOut;
        }
        
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
        
        // indicate we have allocated memory
        initialised = true;
    }
    
    void setFrameLength(int frameLength_)
    {
        // initialise the frame length
        frameLength = frameLength_;
        
        initialise();
    }
    
    void performFFT(std::vector<float> frame);
    
    std::vector<float> real;
    std::vector<float> imag;
    
    std::vector<float> getMagnitudeSpectrum();
    
private:
    
    int frameLength;
    std::vector<float> window;
    
    bool initialised;
    
    kiss_fft_cfg cfg;           /**< Kiss FFT configuration */
    kiss_fft_cpx *fftIn;        /**< FFT input samples */
    kiss_fft_cpx *fftOut;       /**< FFT output samples */
};

#endif /* defined(__SoundAnalyser__FFT__) */
