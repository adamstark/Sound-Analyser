//
//  EditableLabel.cpp
//  Sound Analyser - AU
//
//  Created by Adam Stark on 16/05/2020.
//  Copyright © 2020 Adam Stark. All rights reserved.
//

#include "EditableLabel.h"
#include "PluginLookAndFeel.h"

EditableLabel::EditableLabel()
{
    setColour (Label::ColourIds::textColourId, findColour (PluginLookAndFeel::ColourIds::SeaGreen));
    setColour (Label::ColourIds::textWhenEditingColourId, findColour (PluginLookAndFeel::ColourIds::SeaGreen));
    setColour (Label::ColourIds::backgroundColourId, Colours::white.withAlpha (0.1f));
    setColour (Label::ColourIds::backgroundWhenEditingColourId, Colours::white.withAlpha (0.1f));
    setColour (Label::ColourIds::outlineColourId, Colours::transparentBlack);
    setColour (Label::ColourIds::outlineWhenEditingColourId, findColour (PluginLookAndFeel::ColourIds::SeaGreen));
    setEditable (true);
}
