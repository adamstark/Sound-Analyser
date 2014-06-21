//
//  ItemListComponent.cpp
//  Sound Analyser
//
//  Created by Adam Stark on 16/06/2014.
//
//

#include "ItemListComponent.h"

//==============================================================================
ItemListComponent::ItemListComponent() : ListBox ("d+d source", 0)
{
    setModel(this);
    
    updateContent();
}

//==============================================================================
int ItemListComponent::getNumRows()
{
    return listItems.size();
}

//==============================================================================
void ItemListComponent::setContentList(StringArray list)
{
    listItems = list;
    
    updateContent();
    repaint();
}

//==============================================================================
void ItemListComponent::selectedRowsChanged (int lastRowSelected)
{
    sendChangeMessage();
}

//==============================================================================
void ItemListComponent::paintListBoxItem (int rowNumber, Graphics& g, int width, int height, bool rowIsSelected)
{
    if (rowIsSelected)
    {
        g.fillAll(Colours::lightblue);
    }
    
    g.setFont(12);
    g.drawFittedText(listItems[rowNumber], 5, 0, width-5, height, Justification::centredLeft, 1);
    
}

//==============================================================================
String ItemListComponent::getCurrentlySelectedItem()
{
    return listItems[getSelectedRow()];
}