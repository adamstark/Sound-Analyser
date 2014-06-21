//
//  FFTComponent.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 04/12/2013.
//
//

#include "MelFreqSpecComponent.h"

//==============================================================================
MelFreqSpecComponent::MelFreqSpecComponent(ValueTree& analysisTree_) : SimpleAnalysisComponent(analysisTree_)
{
    setSize (580, 30);
   
    numMelBinsText.setText("# Bins", dontSendNotification);
    addAndMakeVisible(&numMelBinsText);
    
    numMelBins.setColour(Label::textColourId, Colours::black);
    numMelBins.setColour(Label::ColourIds::backgroundColourId, Colours::white);
    numMelBins.setColour(Label::ColourIds::outlineColourId, Colours::lightgrey);
    numMelBins.setText("13", dontSendNotification);
    numMelBins.setEditable(true);
    addAndMakeVisible(&numMelBins);
    
    numMelBins.addListener(this);
    
    refreshFromTree();
}



//==============================================================================
void MelFreqSpecComponent::customComponentPropertyChange(ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
{
    if (property == AnalysisProperties::MelFrequencySpectrum::numBins)
    {
        numMelBins.setText(treeWhosePropertyHasChanged[property], dontSendNotification);
    }
}

//==============================================================================
void MelFreqSpecComponent::customComponentResized()
{
    numMelBinsText.setBounds(400, 0, 70, 20);
    numMelBins.setBounds(480,00,40,20);
}

//==============================================================================
void MelFreqSpecComponent::customComponentRefreshFromTree()
{
    int numBins = analysisTree[AnalysisProperties::MelFrequencySpectrum::numBins];
    numMelBins.setText(String(numBins), dontSendNotification);
}

//==============================================================================
void MelFreqSpecComponent::labelTextChanged (Label* labelThatHasChanged)
{
    if (labelThatHasChanged == &numMelBins)
    {
        int numBins = numMelBins.getTextValue().getValue();
        
        analysisTree.setProperty(AnalysisProperties::MelFrequencySpectrum::numBins, numBins, nullptr);
    }
}

