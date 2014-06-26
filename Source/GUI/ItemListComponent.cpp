//=======================================================================
/** @file ItemListComponent.cpp
 *  @brief A gui component to display a list of String elements
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