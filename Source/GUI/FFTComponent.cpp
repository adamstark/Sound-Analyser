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
    setSize (580, 30);
    
    String name = analysisTree[AnalysisProperties::name];
    analysisName.setText(name, dontSendNotification);
    addAndMakeVisible(&analysisName);
    
    sendButton.setButtonText("Send");
    //sendButton.setColour(TextButton::ColourIds::buttonOnColourId, Colours::blueviolet);
    //sendButton.setColour(TextButton::ColourIds::buttonColourId, Colours::silver);
    sendButton.setToggleState(false, dontSendNotification);
    addAndMakeVisible(&sendButton);
    
    plotButton.setButtonText("Plot");
    //plotButton.setColour(TextButton::ColourIds::buttonOnColourId, Colours::yellowgreen);
    //plotButton.setColour(TextButton::ColourIds::buttonColourId, Colours::silver);
    plotButton.setToggleState(false, dontSendNotification);
    addAndMakeVisible(&plotButton);
        
    removeButton.setButtonText("x");
    addAndMakeVisible(&removeButton);
    
    numFFTSamplesText.setText("# Samples", dontSendNotification);
    addAndMakeVisible(&numFFTSamplesText);
    
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
    removeButton.setBounds(0,0,20,20);
    analysisName.setBounds(30,0,300,20);
    
    sendButton.setBounds(280,0,40,20);
    plotButton.setBounds(340, 0, 40, 20);
    
    numFFTSamplesText.setBounds(400, 0, 70, 20);
    numFFTSamples.setBounds(480,00,40,20);

    
}

//==============================================================================
void FFTComponent::paint(Graphics& g)
{
    //g.fillAll(Colours::silver);
}