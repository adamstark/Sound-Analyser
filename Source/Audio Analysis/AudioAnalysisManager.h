//
//  AudioAnalysisManager.h
//  SoundAnalyser
//
//  Created by Adam Stark on 19/05/2013.
//
//

#ifndef __SoundAnalyser__AudioAnalysisManager__
#define __SoundAnalyser__AudioAnalysisManager__

#include "../JuceLibraryCode/JuceHeader.h"
#include "OSCSender.h"
#include "FFT.h"
#include "AudioBuffer.h"
#include <iostream>

#include "AudioAnalysis.h"
#include "Analyses/RMS.h"
#include "Analyses/PeakEnergy.h"
#include "Analyses/ZeroCrossingRate.h"
#include "Analyses/SpectralCentroid.h"
#include "Analyses/SpectralDifference.h"
#include "Analyses/StandardDeviation.h"
#include "Analyses/FFTMagnitudeSpectrum.h"

#include <speex/speex_resampler.h>


class AudioAnalysisManager {

public:
    /** constructor */
    AudioAnalysisManager();
    
    /** passes the audio buffer through a number of analysis algorithms 
     * @param buffer the audio buffer containing the audio samples
     * @param numSamples the number of audio samples in the buffer
     */
    void analyseAudio(float* buffer,int numSamples);
                
    std::vector<float> plotHistory;
    std::vector<float> vectorPlot;
    
    void setAnalyserIdString(std::string analyserId)
    {
        std::string idWithSlash("/");
        
        idWithSlash = idWithSlash.append(analyserId);
        
        for (int i = 0;i < audioAnalyses.size();i++)
        {
            audioAnalyses[i]->buildAddressPatternFromId(idWithSlash);
        }
    }
    
    Array<AudioAnalysis*> audioAnalyses;
    
    OutputType currentAnalysisToPlotType;
    
private:
    
    int frameSize;
    
    void updatePlotHistory(float newSample);
    
    std::vector<float> resamplePlot(std::vector<float> v)
    {
        std::vector<float> resampledSignal;
        resampledSignal.resize(512);
        
        float *inF;
        inF = new float[v.size()];
        float *outF;
        outF = new float[v.size()];
        
        for (int i = 0;i < v.size();i++)
        {
            inF[i] = (float) v[i];
        }
        
        SpeexResamplerState *resampler;
        
        
        int err = 0;
        
        //resampler = speex_resampler_init(nb_channels, input_rate, output_rate, quality, &err);
        resampler = speex_resampler_init(1, (spx_uint32_t) v.size(), 512, 0, &err);
        
        
        spx_uint32_t inLen = (spx_uint32_t) v.size();
        spx_uint32_t outLen = (spx_uint32_t) 512;
        
        //err = speex_resampler_process_int(resampler, channelID, in, &in_length, out, &out_length);
        err = speex_resampler_process_float(resampler, 0, inF, &inLen, outF, &outLen);
        
        
        
        for (int i = 0;i < resampledSignal.size();i++)
        {
            resampledSignal[i] = outF[i];
        }
        
        delete [] inF;
        delete [] outF;
        
        speex_resampler_destroy(resampler);
        
        return resampledSignal;
    }
    
    void updateVectorPlot(std::vector<float> v)
    {
        // if the vector is less than or equal to the
        // length of our plot window then we can just
        // use it as is
        if (v.size() <= 512)
        {
            vectorPlot.resize(v.size());
            
            for (int i = 0;i < v.size();i++)
            {
                vectorPlot[i] = v[i];
            }
        }
        else // otherwise, we have to downsample
        {
            vectorPlot.resize(512);
            
            vectorPlot = resamplePlot(v);
        }
    }
    
    /** allows osc to be sent to a specific ip address and port number */
    OSCSender osc;
    
    /** an object for calculating audio features */
   // AudioFeatures audioFeatures;
    
    AudioBuffer audioBuffer;
    
    /** an object for computing the fourier transform of audio frames */
    FFT fft;
    
    
    RMS rms;
    PeakEnergy peakEnergy;
    ZeroCrossingRate zcr;
    SpectralCentroid spectralCentroid;
    SpectralDifference spectralDifference;
    StandardDeviation standardDeviation;
    
    FFTMagnitudeSpectrum fftMagnitudeSpectrum;
    
    

};

#endif /* defined(__SoundAnalyser__AudioAnalysisManager__) */
