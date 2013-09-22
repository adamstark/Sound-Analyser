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
    setSize (290, 50);
    
    String name = AnalysisModel::getAnalysisName(analysisTree.getType());
    analysisName.setText(name, dontSendNotification);
    addAndMakeVisible(&analysisName);
    
    sendButton.setButtonText("Send");
    sendButton.setColour(TextButton::ColourIds::buttonOnColourId, Colours::blueviolet);
    sendButton.setColour(TextButton::ColourIds::buttonColourId, Colours::silver);
    sendButton.setToggleState(false, dontSendNotification);
    addAndMakeVisible(&sendButton);
    
    analysisTree.addListener(this);
    sendButton.addListener(this);
        
    refreshFromTree();
}

//==============================================================================
void SimpleAnalysisComponent::refreshFromTree()
{    
    resized();
}

//==============================================================================
void SimpleAnalysisComponent::resized()
{
    analysisName.setBounds(0,0,getWidth(),20);
    
    sendButton.setBounds(0,25,40,20);
    
}

//==============================================================================
void SimpleAnalysisComponent::paint(Graphics& g)
{
    g.fillAll(Colours::darkgrey);
}
