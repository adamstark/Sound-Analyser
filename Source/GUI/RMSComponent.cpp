//
//  MappingComponent.cpp
//  Gluver
//
//  Created by Adam Stark on 19/06/2013.
//
//

#include "RMSComponent.h"

//==============================================================================
RMSComponent::RMSComponent(ValueTree& analysisTree_) : analysisTree(analysisTree_)
{
    setSize (290, 50);
    
    analysisName.setText("Root Mean Square (RMS)", dontSendNotification);
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
void RMSComponent::refreshFromTree()
{
    resized();
}

//==============================================================================
void RMSComponent::resized()
{
    analysisName.setBounds(0,0,getWidth(),20);
    
    sendButton.setBounds(0,25,40,20);
    
}

//==============================================================================
void RMSComponent::paint(Graphics& g)
{
    g.fillAll(Colours::darkgrey);
}
