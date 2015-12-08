//=======================================================================
/** @file SimpleAnalysisComponent.h
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

#ifndef __Gluver__MappingComponent__
#define __Gluver__MappingComponent__

#include "../../JuceLibraryCode/JuceHeader.h"
#include "../Audio Analysis/AnalysisModel.h"

/** A generic GUI component for AudioAnalysis modules. 
 
    Extend this class to create a custom component. 
 
*/
class SimpleAnalysisComponent :     public Component,
                                    public Button::Listener,
                                    public ValueTree::Listener
{
    
public:
    SimpleAnalysisComponent(ValueTree& analysisTree_);
    
    virtual ~SimpleAnalysisComponent()
    {
        
    }
    
    void refreshFromTree();
    
    //======================================================================
    // Component
    void resized();
    void paint(Graphics& g);
    
    //======================================================================
    // Button::Listener
    void buttonClicked (Button* button);
    
    //======================================================================
    // ValueTree::Listener
    void valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property);
    void valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded);
    void valueTreeChildRemoved (ValueTree& parentTree,ValueTree& childWhichHasBeenRemoved,int indexFromWhichChildWasRemoved);
    void valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved,int oldIndex, int newIndex);
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
