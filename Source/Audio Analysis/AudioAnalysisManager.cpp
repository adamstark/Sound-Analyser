//=======================================================================
/** @file AudioAnalysisManager.cpp
 *  @brief A class to manage audio input and all audio analysis modules
 *  @author Adam Stark
 *  @copyright Copyright (C) 2014  Adam Stark
 *
 * This file is part of Sound Analyser.
 *
 * Sound Analyser is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Sound Analyser is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Sound Analyser.  If not, see <http://www.gnu.org/licenses/>.
 */
//=======================================================================

#include "AudioAnalysisManager.h"
#include "../../Libs/speex/include/speex/speex_resampler.h"

//==============================================================================
AudioAnalysisManager::AudioAnalysisManager (int bufferSize_)
 :  bufferSize (bufferSize_),
    audioBuffer (bufferSize),
    gist (bufferSize, DEFAULT_SAMPLING_FREQUENCY),
    port (8000),
    ipAddress ("127.0.0.1")
{
    setBufferSize (bufferSize);
    
    // this function adds all algorithms that the plug-in will have access to
    addAudioAnalysisAlgorithms();
    
    currentAnalysisToPlotType = FloatOutput;
    
    setAnalyserIdString ("1");

    vectorPlot.resize (512);
    plotHistory.resize (512);
    
    for (int i = 0; i < 512; i++)
    {
        plotHistory[i] = 0.f;
        vectorPlot[i] = 0.f;
    }
}

//==============================================================================
AudioAnalysisManager::~AudioAnalysisManager()
{
    masterReference.clear();
}

//==============================================================================
void AudioAnalysisManager::addAudioAnalysisAlgorithms()
{
    // !!!
    // please add new audio analyses in a group, per collection, and then in alphabetical order
    // by name as this is how they will appear on the selection dialog
    
    // GIST
    audioAnalyses.add (new FFTMagnitudeSpectrum());
    audioAnalyses.add (new MelFrequencySpectrum (bufferSize, DEFAULT_SAMPLING_FREQUENCY));
    audioAnalyses.add (new PeakEnergy());
    audioAnalyses.add (new Pitch (bufferSize, DEFAULT_SAMPLING_FREQUENCY));
    audioAnalyses.add (new RMS());
    audioAnalyses.add (new SpectralCentroid());
    audioAnalyses.add (new SpectralCrest());
    audioAnalyses.add (new SpectralDifference (bufferSize));
    audioAnalyses.add (new SpectralFlatness());
    audioAnalyses.add (new ZeroCrossingRate());
    
    // QMUL
    audioAnalyses.add (new SP_ChordDetector (bufferSize, DEFAULT_SAMPLING_FREQUENCY));
    audioAnalyses.add (new SP_Chromagram (bufferSize, DEFAULT_SAMPLING_FREQUENCY));

}

//==============================================================================
void AudioAnalysisManager::analyseAudio (float* buffer,int numSamples)
{
    // add new audio frame to our larger buffer
    audioBuffer.addNewSamplesToBuffer (buffer,numSamples);
        
    if (audioBuffer.isReady())
    {
        gist.processAudioFrame (audioBuffer.buffer);
        
        for (int i = 0;i < audioAnalyses.size();i++)
        {
            if (audioAnalyses[i]->send || audioAnalyses[i]->plot)
            {
                if (audioAnalyses[i]->getInputType() == AudioBufferInput)
                    audioAnalyses[i]->performAnalysis (audioBuffer.buffer);
                else if (audioAnalyses[i]->getInputType() == MagnitudeSpectrumInput)
                    audioAnalyses[i]->performAnalysis (gist.getMagnitudeSpectrum());
                
                if (audioAnalyses[i]->resultReady())
                {
                    if (audioAnalyses[i]->getOutputType() == FloatOutput)
                    {
                        float output = audioAnalyses[i]->getAnalysisResultAsFloat();
                            
                        if (audioAnalyses[i]->send)
                        {
                            const ScopedLock sl (lock);
                            OSCMessage m (OSCAddressPattern (audioAnalyses[i]->addressPattern));
                            m.addFloat32 (output);
                            osc.send (m);
                        }
                        
                        if (audioAnalyses[i]->plot)
                        {
                            MessageManager::callAsync ([w = WeakReference<AudioAnalysisManager> (this), output]()
                            {
                                if (! w.wasObjectDeleted())
                                    w->updatePlotHistory (output);
                            });
                        }
                    }
                    else if (audioAnalyses[i]->getOutputType() == VectorOutput)
                    {
                        std::vector<float> output = audioAnalyses[i]->getAnalysisResultAsVector();
                            
                        if (audioAnalyses[i]->send)
                        {
                            const ScopedLock sl (lock);
                            OSCMessage m (OSCAddressPattern (audioAnalyses[i]->addressPattern));
                            
                            for (int i = 0; i < output.size(); i++)
                                m.addFloat32 (output[i]);
                            
                            osc.send (m);
                        }

                        if (audioAnalyses[i]->plot)
                        {
                            MessageManager::callAsync ([w = WeakReference<AudioAnalysisManager> (this), output]()
                            {
                                w->updateVectorPlot (output);
                            });
                        }
                    }
                }
            }
        }
    }
}

//==============================================================================
void AudioAnalysisManager::updatePlotHistory (float newSample)
{
    JUCE_ASSERT_MESSAGE_THREAD;
    
    int N = static_cast<int> (plotHistory.size());
    
    for (int i = 0; i < N - 1; i++)
        plotHistory[i] = plotHistory[i + 1];
    
    plotHistory[N - 1] = newSample;
}

//==============================================================================
void AudioAnalysisManager::clearPlotHistory()
{
    JUCE_ASSERT_MESSAGE_THREAD;
    
    int N = static_cast<int> (plotHistory.size());
    
    for (int i = 0; i < N;i++)
        plotHistory[i] = 0;
}

//==============================================================================
void AudioAnalysisManager::setAnalyserIdString (std::string analyserId)
{
    std::string idWithSlash ("/");
    idWithSlash = idWithSlash.append (analyserId);
    for (int i = 0; i < audioAnalyses.size(); i++)
        audioAnalyses[i]->buildAddressPatternFromId (idWithSlash);
}

//==============================================================================
void AudioAnalysisManager::setBufferSize (int b)
{
    bufferSize = b;
    
    audioBuffer.setBufferSize (bufferSize);
    gist.setAudioFrameSize (bufferSize);
    
    for (int i = 0; i < audioAnalyses.size(); i++)
        audioAnalyses[i]->setInputAudioFrameSize (bufferSize);
}

//==============================================================================
void AudioAnalysisManager::setOSCPort (int oscPort)
{
    const ScopedLock sl (lock);
    port = oscPort;
    osc.connect (ipAddress, port);
}

//==============================================================================
void AudioAnalysisManager::setIPAddress (std::string remoteHostIPAddress)
{
    const ScopedLock sl (lock);
    ipAddress = remoteHostIPAddress;
    osc.connect (ipAddress, port);
}

//==============================================================================
void AudioAnalysisManager::setSamplingFrequency (int fs)
{
    for (int i = 0; i < audioAnalyses.size(); i++)
        audioAnalyses[i]->setSamplingFrequency (fs);
}

//==============================================================================
void AudioAnalysisManager::setHostFrameSize (int frameSize)
{
    AnalysisModel::currentHostFrameSize = frameSize;
}

//==============================================================================
std::vector<float> AudioAnalysisManager::resamplePlot (std::vector<float> v)
{
    std::vector<float> resampledSignal;
    resampledSignal.resize (512);
    
    float* inF;
    inF = new float[v.size()];
    float* outF;
    outF = new float[v.size()];
    
    for (int i = 0; i < v.size(); i++)
    {
        inF[i] = (float) v[i];
    }
    
    SpeexResamplerState *resampler;
    
    int err = 0;
    
    resampler = speex_resampler_init(1, (spx_uint32_t) v.size(), 512, 0, &err);
    
    
    spx_uint32_t inLen = (spx_uint32_t) v.size();
    spx_uint32_t outLen = (spx_uint32_t) 512;
    
    err = speex_resampler_process_float (resampler, 0, inF, &inLen, outF, &outLen);
    
    for (int i = 0;i < resampledSignal.size();i++)
    {
        resampledSignal[i] = outF[i];
    }
    
    delete [] inF;
    delete [] outF;
    
    speex_resampler_destroy(resampler);
    
    return resampledSignal;
}

//==============================================================================
void AudioAnalysisManager::updateVectorPlot (std::vector<float> v)
{
    JUCE_ASSERT_MESSAGE_THREAD
    
    // if the vector is less than or equal to the
    // length of our plot window then we can just
    // use it as is
    if (v.size() <= 512)
    {
        vectorPlot.resize (v.size());
        
        for (int i = 0; i < v.size(); i++)
            vectorPlot[i] = v[i];
    }
    else // otherwise, we have to downsample
    {
        vectorPlot.resize (512);
        vectorPlot = resamplePlot (v);
    }
}
