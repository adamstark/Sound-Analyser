//
//  ItemListComponent.h
//  Sound Analyser
//
//  Created by Adam Stark on 16/06/2014.
//
//

#ifndef __Sound_Analyser__ItemListComponent__
#define __Sound_Analyser__ItemListComponent__

#include "../../JuceLibraryCode/JuceHeader.h"
#include "../Audio Analysis/AnalysisModel.h"

class ItemListComponent : public ListBox, ListBoxModel, public ChangeBroadcaster
{
public:
    
    ItemListComponent();
    
    int getNumRows();
    
    void setContentList(StringArray list);
    
    void selectedRowsChanged (int lastRowSelected);
        
    void paintListBoxItem (int rowNumber, Graphics& g, int width, int height, bool rowIsSelected);
    
    String getCurrentlySelectedItem();
    
private:
    
    StringArray listItems;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(ItemListComponent)
};

#endif /* defined(__Sound_Analyser__ItemListComponent__) */
