//
//  FFTComponent.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 04/12/2013.
//
//

#include "FFTComponent.h"

//==============================================================================
FFTComponent::FFTComponent(ValueTree& analysisTree_) : analysisTree(analysisTree_)
{
    setSize (290, 75);
    
    String name = AnalysisModel::getAnalysisName(analysisTree.getType());
    analysisName.setText(name, dontSendNotification);
    addAndMakeVisible(&analysisName);
    
    sendButton.setButtonText("Send");
    sendButton.setColour(TextButton::ColourIds::buttonOnColourId, Colours::blueviolet);
    sendButton.setColour(TextButton::ColourIds::buttonColourId, Colours::silver);
    sendButton.setToggleState(false, dontSendNotification);
    addAndMakeVisible(&sendButton);
    
    plotButton.setButtonText("Plot");
    plotButton.setColour(TextButton::ColourIds::buttonOnColourId, Colours::yellowgreen);
    plotButton.setColour(TextButton::ColourIds::buttonColourId, Colours::silver);
    plotButton.setToggleState(false, dontSendNotification);
    addAndMakeVisible(&plotButton);
        
    removeButton.setButtonText("x");
    addAndMakeVisible(&removeButton);
    
    numFFTSamples.setColour(Label::ColourIds::backgroundColourId, Colours::white);
    numFFTSamples.setColour(Label::ColourIds::outlineColourId, Colours::lightgrey);
    numFFTSamples.setText("512", dontSendNotification);
    numFFTSamples.setEditable(true);
    addAndMakeVisible(&numFFTSamples);
    
    analysisTree.addListener(this);
    sendButton.addListener(this);
    plotButton.addListener(this);
    removeButton.addListener(this);
    numFFTSamples.addListener(this);
    
    refreshFromTree();
}

//==============================================================================
void FFTComponent::refreshFromTree()
{
    sendButton.setToggleState(analysisTree[AnalysisProperties::send],dontSendNotification);
    plotButton.setToggleState(analysisTree[AnalysisProperties::plot], dontSendNotification);
    int numSamples = analysisTree[AnalysisProperties::FFT::numSamplesToSend];
    numFFTSamples.setText(String(numSamples), dontSendNotification);
    
    resized();
}

//==============================================================================
void FFTComponent::resized()
{
    analysisName.setBounds(0,0,getWidth(),20);
    
    sendButton.setBounds(0,25,40,20);
    plotButton.setBounds(50, 25, 40, 20);
    
    removeButton.setBounds(100,25,20,20);
    
    numFFTSamples.setBounds(0,50,40,20);
    
}

//==============================================================================
void FFTComponent::paint(Graphics& g)
{
    g.fillAll(Colours::silver);
}