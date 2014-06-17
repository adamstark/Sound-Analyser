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
#include "AnalysisModel.h"

class ItemListComponent : public ListBox, ListBoxModel, public ChangeBroadcaster
{
public:
    ItemListComponent() : ListBox ("d+d source", 0)
    {
        setModel(this);
        
        updateContent();
    }
    
    int getNumRows()
    {
        return listItems.size();
    }
    
    void setContentList(StringArray list)
    {
        listItems = list;
        
        updateContent();
        repaint();
    }
    
    void selectedRowsChanged (int lastRowSelected)
    {
        sendChangeMessage();
    }
        
    void paintListBoxItem (int rowNumber, Graphics& g, int width, int height, bool rowIsSelected)
    {
        if (rowIsSelected)
        {
            g.fillAll(Colours::lightblue);
        }
        
        g.setFont(12);
        g.drawFittedText(listItems[rowNumber], 5, 0, width-5, height, Justification::centredLeft, 1);
        
    }
    
    String getCurrentlySelectedItem()
    {
        return listItems[getSelectedRow()];
    }
    
private:
    
    StringArray listItems;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(ItemListComponent)
};

#endif /* defined(__Sound_Analyser__ItemListComponent__) */
