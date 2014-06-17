//
//  FFTComponent.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 04/12/2013.
//
//

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