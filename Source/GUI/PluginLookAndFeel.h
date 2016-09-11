//=======================================================================
/** @file PluginLookAndFeel.h
 *  @brief The GUI look and feel for the Sound Analyser
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

#ifndef __SoundAnalyser__PluginLookAndFeel__
#define __SoundAnalyser__PluginLookAndFeel__

#include "../JuceLibraryCode/JuceHeader.h"

class PluginLookAndFeel : public LookAndFeel_V3
{
public:
    PluginLookAndFeel()
    {
        // labels
        setColour (Label::textColourId, Colours::white);
        
        // buttons
        setColour (TextButton::buttonColourId, Colour::fromRGB (29, 114, 239));
        setColour (TextButton::textColourOffId, Colours::white);
        setColour (TextButton::ColourIds::buttonOnColourId, Colours::aquamarine);
        
        // sliders
        setColour (Slider::ColourIds::thumbColourId, Colours::royalblue);
        setColour (Slider::trackColourId, Colour::fromRGBA (255, 255, 255, 200));
        
        setColour (Slider::rotarySliderFillColourId,Colours::aqua);   
    }
    
    
    ~PluginLookAndFeel()
    {
        
    }
    
    static void fillWithBackgroundTexture (Component& c, Graphics& g)
    {
        dynamic_cast<PluginLookAndFeel&> (c.getLookAndFeel()).fillWithBackgroundTexture (g);
    }
    
    static void fillWithBackgroundTexture (Graphics& g)
    {
        const Image original (ImageCache::getFromMemory (BinaryData::tex2_png,
                                                         BinaryData::tex2_pngSize));
        
        g.setTiledImageFill(original, 0, 0, 1.0f);
        
        g.fillAll();
    }
    
    
private:
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (PluginLookAndFeel)
    
};


#endif /* defined(__SoundAnalyser__PluginLookAndFeel__) */
