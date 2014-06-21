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
#include "../Audio Analysis/AnalysisModel.h"

class SimpleAnalysisComponent : public Component, public Button::Listener, public ValueTree::Listener {
    
public:
    SimpleAnalysisComponent(ValueTree& analysisTree_);
    
    virtual ~SimpleAnalysisComponent()
    {
        
    }
    
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
   
    //======================================================================
    virtual void customComponentPropertyChange(ValueTree& treeWhosePropertyHasChanged, const Identifier& property);
    virtual void customComponentResized();
    virtual void customComponentRefreshFromTree();
    
protected:
    
    ValueTree analysisTree;
    
private:
    
    
    
    Label analysisName;
    TextButton sendButton;
    TextButton plotButton;
    
    TextButton removeButton;
    
    
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SimpleAnalysisComponent)
    //======================================================================//
};

#endif /* defined(__Gluver__MappingComponent__) */
