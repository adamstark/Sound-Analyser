//=======================================================================
/** @file ItemListComponent.h
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
