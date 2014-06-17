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
    
    void refreshFromTree();
    
    //======================================================================
    void resized();
    void paint(Graphics& g);
    
    //======================================================================
    void buttonClicked (Button* button);
    
    //======================================================================
    void valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property);
    void valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded);
    void valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved);
    void valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved);
    void valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged);
   
    
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
