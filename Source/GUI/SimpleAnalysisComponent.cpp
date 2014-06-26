//=======================================================================
/** @file SimpleAnalysisComponent.cpp
 *  @brief The basic component for an audio analysis module. Can be extended
 * to create custom components
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

#include "SimpleAnalysisComponent.h"

//==============================================================================
SimpleAnalysisComponent::SimpleAnalysisComponent(ValueTree& analysisTree_) : analysisTree(analysisTree_)
{

    setSize (580, 30);
    
    
    
    String name = analysisTree[AnalysisProperties::name];
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
    
    customComponentRefreshFromTree();
    
    resized();
}

//==============================================================================
void SimpleAnalysisComponent::resized()
{
    removeButton.setBounds(0,0,20,20);
    analysisName.setBounds(30,0,300,20);
    
    sendButton.setBounds(280,0,40,20);
    plotButton.setBounds(340, 0, 40, 20);

    customComponentResized();
}


//==============================================================================
void SimpleAnalysisComponent::paint(Graphics& g)
{
   // g.fillAll(Colours::silver);
}

//==============================================================================
void SimpleAnalysisComponent::buttonClicked (Button* button)
{
    if (button == &sendButton)
    {
        bool state = sendButton.getToggleState();
        
        if (state == true)
        {
            analysisTree.setProperty(AnalysisProperties::send, 0, nullptr);
        }
        else
        {
            analysisTree.setProperty(AnalysisProperties::send, 1, nullptr);
        }
    }
    else if (button == &plotButton)
    {
        bool state = plotButton.getToggleState();
        
        if (state == true)
        {
            analysisTree.setProperty(AnalysisProperties::plot, 0, nullptr);
        }
        else
        {
            AnalysisModel::turnOffAllPlotting(analysisTree.getParent());
            analysisTree.setProperty(AnalysisProperties::plot, 1, nullptr);
        }
    }
    else if (button == &removeButton)
    {
        AnalysisModel::removeAnalysis(analysisTree);
    }
}

//==============================================================================
void SimpleAnalysisComponent::valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
{
    if (treeWhosePropertyHasChanged == analysisTree)
    {
        if (property == AnalysisProperties::send)
        {
            sendButton.setToggleState(analysisTree[AnalysisProperties::send],dontSendNotification);
        }
        else if (property == AnalysisProperties::plot)
        {
            plotButton.setToggleState(analysisTree[AnalysisProperties::plot], dontSendNotification);
        }
        
        customComponentPropertyChange(treeWhosePropertyHasChanged,property);
        
        
        resized();
    }
}
//==============================================================================
void SimpleAnalysisComponent::valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded)
{

}

//==============================================================================
void SimpleAnalysisComponent::valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved)
{

}

//==============================================================================
void SimpleAnalysisComponent::valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved)
{

}

//==============================================================================
void SimpleAnalysisComponent::valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged)
{

}

//==============================================================================
void SimpleAnalysisComponent::customComponentPropertyChange(ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
{
    
}

//==============================================================================
void SimpleAnalysisComponent::customComponentResized()
{
    
}

//==============================================================================
void SimpleAnalysisComponent::customComponentRefreshFromTree()
{
    
}
