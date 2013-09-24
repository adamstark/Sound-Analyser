//
//  MappingComponent.h
//  Gluver
//
//  Created by Adam Stark on 19/06/2013.
//
//

#ifndef __Gluver__MappingComponent__
#define __Gluver__MappingComponent__

#include "../../JuceLibraryCode/JuceHeader.h"
#include "AnalysisModel.h"

class SimpleAnalysisComponent : public Component, public Button::Listener, public ValueTree::Listener {
    
public:
    SimpleAnalysisComponent(ValueTree& analysisTree_);
    ~SimpleAnalysisComponent()
    {

    }
    
    void refreshFromTree();
    
    void resized();
    void paint(Graphics& g);
    
    /** Called when the button is clicked. */
    void buttonClicked (Button* button)
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
                AnalysisModel::turnOffAllPlotting(analysisTree);
                analysisTree.setProperty(AnalysisProperties::plot, 1, nullptr);
            }
        }
        else if (button == &removeButton)
        {
            AnalysisModel::removeAnalysis(analysisTree);
        }
    }
    
    void valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
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
            
            resized();
        }
    }
    
    void valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded) { }
    void valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved) { }
    void valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved) { }
    void valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged) { }
   
    
private:
    
    Label analysisName;
    TextButton sendButton;
    TextButton plotButton;
    
    TextButton removeButton;
    
    ValueTree analysisTree;
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SimpleAnalysisComponent)
    //======================================================================//
};

#endif /* defined(__Gluver__MappingComponent__) */
