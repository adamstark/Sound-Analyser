//
//  FFTComponent.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 04/12/2013.
//
//

#include "MelFreqSpecComponent.h"

//==============================================================================
MelFreqSpecComponent::MelFreqSpecComponent(ValueTree& analysisTree_) : analysisTree(analysisTree_)
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
    
    numMelBinsText.setText("# Bins", dontSendNotification);
    addAndMakeVisible(&numMelBinsText);
    
    numMelBins.setColour(Label::textColourId, Colours::black);
    numMelBins.setColour(Label::ColourIds::backgroundColourId, Colours::white);
    numMelBins.setColour(Label::ColourIds::outlineColourId, Colours::lightgrey);
    numMelBins.setText("13", dontSendNotification);
    numMelBins.setEditable(true);
    addAndMakeVisible(&numMelBins);
    
    analysisTree.addListener(this);
    sendButton.addListener(this);
    plotButton.addListener(this);
    removeButton.addListener(this);
    numMelBins.addListener(this);
    
    refreshFromTree();
}

//==============================================================================
void MelFreqSpecComponent::refreshFromTree()
{
    sendButton.setToggleState(analysisTree[AnalysisProperties::send],dontSendNotification);
    plotButton.setToggleState(analysisTree[AnalysisProperties::plot], dontSendNotification);
    int numBins = analysisTree[AnalysisProperties::MelFrequencySpectrum::numBins];
    numMelBins.setText(String(numBins), dontSendNotification);
    
    resized();
}

//==============================================================================
void MelFreqSpecComponent::resized()
{
    removeButton.setBounds(0,0,20,20);
    analysisName.setBounds(30,0,300,20);
    
    sendButton.setBounds(280,0,40,20);
    plotButton.setBounds(340, 0, 40, 20);
    
    numMelBinsText.setBounds(400, 0, 70, 20);
    numMelBins.setBounds(480,00,40,20);

    
}

//==============================================================================
void MelFreqSpecComponent::paint(Graphics& g)
{
    //g.fillAll(Colours::silver);
}