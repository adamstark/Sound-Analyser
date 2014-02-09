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
#include "../../GUI/FFTComponent.h"
#include <cmath>

class FFTMagnitudeSpectrum : public AudioAnalysis
{
public:
    
    //==============================================================================
    FFTMagnitudeSpectrum()
    {
        addressPattern = getCoreAddressPattern();
        
        // initialise
        numSamplesToSend = 512;
    }
    
    //==============================================================================
    String getName()
    {
        return "FFT Magnitude Spectrum";
    }
    
    //==============================================================================
    std::vector<float> performAnalysis_v(std::vector<float> magnitudeSpectrum)
    {
        std::vector<float> newSpec;
        
        newSpec.resize(numSamplesToSend);
        
        if (newSpec.size() <= magnitudeSpectrum.size())
        {
            for (int i = 0;i < newSpec.size();i++)
            {
                newSpec[i] = magnitudeSpectrum[i];
            }
        }
        else // <--- THIS SHOULDN'T HAPPEN
        {
            for (int i = 0;i < magnitudeSpectrum.size();i++)
            {
                newSpec[i] = magnitudeSpectrum[i];
            }
        
            for (int i = magnitudeSpectrum.size();i < newSpec.size();i++)
            {
                newSpec[i] = 0.0;
            }
        }
        
        return newSpec;
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

        return tree;
    }
    
    //==============================================================================
    /** overriding this as we have a custom GUI */
    virtual Component* getGUIComponent(ValueTree& analysisTree)
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
    
    //===============================================================================
    void setNumFFTSamplesToSend(int numSamples)
    {
        numSamplesToSend = numSamples;
    }
    
private:
    int numSamplesToSend;
};

#endif
