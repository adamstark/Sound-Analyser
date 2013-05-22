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
    
    void performFFT(std::vector<float> frame);
    
    std::vector<float> real;
    std::vector<float> imag;
    
    std::vector<float> getMagnitudeSpectrum();
    
private:
    
    int frameLength;
    std::vector<float> window;
    
    
    
    kiss_fft_cfg cfg;           /**< Kiss FFT configuration */
    kiss_fft_cpx *fftIn;        /**< FFT input samples */
    kiss_fft_cpx *fftOut;       /**< FFT output samples */
};

#endif /* defined(__SoundAnalyser__FFT__) */
