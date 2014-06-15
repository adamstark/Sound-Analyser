//
//  MelFrequencySpectrum.h
//  Sound Analyser
//
//  Created by Adam Stark on 15/06/2014.
//
//

#ifndef __Sound_Analyser__MelFrequencySpectrum__
#define __Sound_Analyser__MelFrequencySpectrum__

#include "AudioAnalysis.h"
#include "../GUI/MelFreqSpecComponent.h"

class MelFrequencySpectrum : public AudioAnalysis
{
public:
    
    //==============================================================================
    MelFrequencySpectrum(int frameSize,int samplingFrequency) : mfcc(frameSize,samplingFrequency)
    {
        numBins = 13;
    }
    
    //==============================================================================
    String getName()
    {
        return "Mel-frequency Spectrum";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> magnitudeSpectrum)
    {
        mfccOutput = mfcc.melFrequencySpectrum(magnitudeSpectrum);
    }
    
    //==============================================================================
    std::vector<float> getAnalysisResultAsVector()
    {
        return mfccOutput;
    }
    
    //==============================================================================
    void setSamplingFrequency(int fs)
    {
        mfcc.setSamplingFrequency(44100);
    }
    
    //==============================================================================
    void setInputAudioFrameSize(int frameSize)
    {
        mfcc.setFrameSize(frameSize);
    }
    
    //==============================================================================
    /** overriding initialise here as we have extra fields! */
    void initialise(ValueTree &analysisTree)
    {
        send = analysisTree[AnalysisProperties::send];
        plot = analysisTree[AnalysisProperties::plot];
        
        // this property is unique to Mel Frequency Spectrum
        numBins = analysisTree[AnalysisProperties::MelFrequencySpectrum::numBins];
        
    }
    
    //==============================================================================
    /** overriding this as we have custom properties */
    void handleCustomPropertyChange(ValueTree& tree, const Identifier& property)
    {
        if (property == AnalysisProperties::MelFrequencySpectrum::numBins)
        {
            numBins = tree[property];
            
            mfcc.setNumCoefficients(numBins);
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
        
        // extra properties for Mel Frequency Spectrum
        tree.setProperty(AnalysisProperties::MelFrequencySpectrum::numBins, 13, nullptr);
        
        return tree;
    }
    
    //==============================================================================
    /** overriding this as we have a custom GUI */
    Component* getGUIComponent(ValueTree& analysisTree)
    {
        return new MelFreqSpecComponent(analysisTree);
    }
        
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/melSpectrum";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("MelFrequencySpectrum");
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
    
private:
    
    MFCC<float> mfcc;
    std::vector<float> mfccOutput;
    
    int numBins;
};

#endif /* defined(__Sound_Analyser__MelFrequencySpectrum__) */
