//=======================================================================
/** @file MelFrequencySpectrum.h
 *  @brief The Mel Frequency Spectrum audio analysis module
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

#ifndef __Sound_Analyser__MelFrequencySpectrum__
#define __Sound_Analyser__MelFrequencySpectrum__

#include "AudioAnalysis.h"
#include "../GUI/Custom Analysis Components/MelFreqSpecComponent.h"

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
        
        // set the number of coefficients in the mfcc object
        mfcc.setNumCoefficients(numBins);
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
    Identifier getCollectionIdentifier()
    {
        return Identifier("Gist");
    }
    
    //==============================================================================
    String getCollectionName()
    {
        return "Gist";
    }
    
    //==============================================================================
    String getAuthorString()
    {
        return "Adam Stark";
    }
    
    //==============================================================================
    String getTechnicalDescription()
    {
        return "The magnitude spectrum mapped on to a Mel scale using a bank of triangular filters.";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "A feature showing you how energy is distributed across the frequency range, on a scale related to human perception";
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
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (MelFrequencySpectrum)
};

#endif /* defined(__Sound_Analyser__MelFrequencySpectrum__) */
