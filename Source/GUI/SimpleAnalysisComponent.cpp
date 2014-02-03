//
//  MappingComponent.cpp
//  Gluver
//
//  Created by Adam Stark on 19/06/2013.
//
//

#include "SimpleAnalysisComponent.h"

//==============================================================================
SimpleAnalysisComponent::SimpleAnalysisComponent(ValueTree& analysisTree_) : analysisTree(analysisTree_)
{
    setSize (580, 30);
    
    
    
    String name = AnalysisModel::getAnalysisName(analysisTree.getType());
    analysisName.setText(name, dontSendNotification);
    analysisName.setFont(Font(16));
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
    
    analysisTree.addListener(this);
    sendButton.addListener(this);
    plotButton.addListener(this);
    removeButton.addListener(this);
        
    refreshFromTree();
}

//==============================================================================
void SimpleAnalysisComponent::refreshFromTree()
{
    sendButton.setToggleState(analysisTree[AnalysisProperties::send],dontSendNotification);
    plotButton.setToggleState(analysisTree[AnalysisProperties::plot], dontSendNotification);
    
    resized();
}

//==============================================================================
void SimpleAnalysisComponent::resized()
{
    removeButton.setBounds(0,0,20,20);
    analysisName.setBounds(30,0,300,20);
    
    sendButton.setBounds(280,0,40,20);
    plotButton.setBounds(340, 0, 40, 20);
        
}

//==============================================================================
void SimpleAnalysisComponent::paint(Graphics& g)
{
   // g.fillAll(Colours::silver);
}
