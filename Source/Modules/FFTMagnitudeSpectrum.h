//
//  FFTMagnitudeSpectrum.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef SoundAnalyser_FFTMagnitudeSpectrum_h
#define SoundAnalyser_FFTMagnitudeSpectrum_h

#include "AudioAnalysis.h"
#include "../GUI/FFTComponent.h"
#include <cmath>

class FFTMagnitudeSpectrum : public AudioAnalysis
{
public:
    
    //==============================================================================
    FFTMagnitudeSpectrum()
    {        
        // initialise
        numSamplesToSend = 512;
    }
    
    //==============================================================================
    String getName()
    {
        return "FFT Magnitude Spectrum";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> magnitudeSpectrum)
    {
        magnitudeSpectrumResult.resize(numSamplesToSend);
        
        if (magnitudeSpectrumResult.size() <= magnitudeSpectrum.size())
        {
            for (int i = 0;i < magnitudeSpectrumResult.size();i++)
            {
                magnitudeSpectrumResult[i] = magnitudeSpectrum[i];
            }
        }
        else // <--- THIS SHOULDN'T HAPPEN
        {
            for (int i = 0;i < magnitudeSpectrum.size();i++)
            {
                magnitudeSpectrumResult[i] = magnitudeSpectrum[i];
            }
            
            for (int i = magnitudeSpectrum.size();i < magnitudeSpectrumResult.size();i++)
            {
                magnitudeSpectrumResult[i] = 0.0;
            }
        }
    }
    
    //==============================================================================
    std::vector<float> getAnalysisResultAsVector()
    {
        return magnitudeSpectrumResult;
    }
    
    //==============================================================================
    /** overriding initialise here as we have extra fields! */
    void initialise(ValueTree &analysisTree)
    {
        send = analysisTree[AnalysisProperties::send];
        plot = analysisTree[AnalysisProperties::plot];
        
        // this property is unique to FFT
        numSamplesToSend = analysisTree[AnalysisProperties::FFT::numSamplesToSend];

    }
    
    //==============================================================================
    /** overriding this as we have custom properties */
    void handleCustomPropertyChange(ValueTree& tree, const Identifier& property)
    {
        if (property == AnalysisProperties::FFT::numSamplesToSend)
        {
            numSamplesToSend = tree[property];
        }
    }
    
    //==============================================================================
    /** overriding this as we have custom parameters */
    virtual ValueTree createAnalysisTree()
    {
        ValueTree tree(getIdentifier());
        
        tree.setProperty(AnalysisProperties::send, 0, nullptr);
        tree.setProperty(AnalysisProperties::plot, 0, nullptr);
        tree.setProperty(AnalysisProperties::name, getName(), nullptr);
        
        // extra properties for FFT
        tree.setProperty(AnalysisProperties::FFT::numSamplesToSend, 512, nullptr);

        magSpecTree = tree;
        
        return tree;
    }
    
    //==============================================================================
    /** overriding this as we have a custom GUI */
    Component* getGUIComponent(ValueTree& analysisTree)
    {
        return new FFTComponent(analysisTree);
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/fft";
    }
        
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("FFT");
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return VectorOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return MagnitudeSpectrumInput;
    }
    
    //==============================================================================
    void setInputAudioFrameSize(int frameSize)
    {
        // if our number of samples to send parameter is larger
        // than the number of magnitude spectrum samples, then
        // automatically adjust
        if ((frameSize/2) < numSamplesToSend)
        {
            magSpecTree.setProperty(AnalysisProperties::FFT::numSamplesToSend, frameSize/2, nullptr);
        }
    }
    
    //===============================================================================
    void setNumFFTSamplesToSend(int numSamples)
    {
        numSamplesToSend = numSamples;
    }
    
private:
    
    ValueTree magSpecTree;
    
    int numSamplesToSend;
    
    std::vector<float> magnitudeSpectrumResult;
};

#endif
