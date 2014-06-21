//=======================================================================
/** @file FFTComponent.cpp
 *  @brief A custom component for the FFT Magnitude Spectrum module
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

#include "FFTComponent.h"

//==============================================================================
FFTComponent::FFTComponent(ValueTree& analysisTree_) : SimpleAnalysisComponent(analysisTree_)
{
    setSize (580, 30);
    
    numFFTSamplesText.setText("# Samples", dontSendNotification);
    addAndMakeVisible(&numFFTSamplesText);
    
    numFFTSamples.setColour(Label::textColourId, Colours::black);
    numFFTSamples.setColour(Label::ColourIds::backgroundColourId, Colours::white);
    numFFTSamples.setColour(Label::ColourIds::outlineColourId, Colours::lightgrey);
    numFFTSamples.setText("512", dontSendNotification);
    numFFTSamples.setEditable(true);
    addAndMakeVisible(&numFFTSamples);
    
    numFFTSamples.addListener(this);
    
    refreshFromTree();
}


//==============================================================================
void FFTComponent::customComponentPropertyChange(ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
{
    if (property == AnalysisProperties::FFT::numSamplesToSend)
    {
        numFFTSamples.setText(treeWhosePropertyHasChanged[property], dontSendNotification);
    }
}

//==============================================================================
void FFTComponent::customComponentResized()
{
    numFFTSamplesText.setBounds(400, 0, 70, 20);
    numFFTSamples.setBounds(480,00,40,20);
}

//==============================================================================
void FFTComponent::customComponentRefreshFromTree()
{
    int numSamples = analysisTree[AnalysisProperties::FFT::numSamplesToSend];
    numFFTSamples.setText(String(numSamples), dontSendNotification);
}

//==============================================================================
void FFTComponent::labelTextChanged (Label* labelThatHasChanged)
{
    if (labelThatHasChanged == &numFFTSamples)
    {
        int numSamples = numFFTSamples.getTextValue().getValue();
        
        ValueTree analyserTree = analysisTree.getParent();
        
        int bufferSize = analyserTree[AnalysisModel::Ids::BufferSize];
        
        if (numSamples > bufferSize/2)
        {
            numSamples = bufferSize/2;
        }
        
        analysisTree.setProperty(AnalysisProperties::FFT::numSamplesToSend, numSamples, nullptr);
    }
}