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

class RMSComponent : public Component, public Button::Listener, public ValueTree::Listener {
    
public:
    RMSComponent(ValueTree& analysisTree_);
    ~RMSComponent()
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
                analysisTree.setProperty(AnalysisModel::AnalysisProperties::send, 0, nullptr);
            }
            else
            {
                analysisTree.setProperty(AnalysisModel::AnalysisProperties::send, 1, nullptr);
            }
        }
    }
    
    void valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
    {
        if (treeWhosePropertyHasChanged == analysisTree)
        {
            if (property == AnalysisModel::AnalysisProperties::send)
            {
                int state = (int) treeWhosePropertyHasChanged.getPropertyAsValue(AnalysisModel::AnalysisProperties::send, nullptr).getValue();
                
                
                
                if (state == 1)
                {
                    sendButton.setToggleState(true, dontSendNotification);
                }
                else
                {
                    sendButton.setToggleState(false, dontSendNotification);
                }
            }
        }
    }
    
    void valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded) { }
    void valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved) { }
    void valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved) { }
    void valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged) { }
   
    
private:
    
    Label analysisName;
    TextButton sendButton;
    
    ValueTree analysisTree;
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (RMSComponent)
    //======================================================================//
};

#endif /* defined(__Gluver__MappingComponent__) */
