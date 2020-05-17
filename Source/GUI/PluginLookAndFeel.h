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
    
    enum ColourIds
    {
        DarkGrey = 0x2340001,
        LightGrey,
        LightBlue,
        Pink,
        Purple,
        SeaGreen
    };
    
    PluginLookAndFeel()
    {
        setColour (ColourIds::DarkGrey, Colour (32, 32, 44));
        setColour (ColourIds::LightGrey, Colour (190, 187, 187));
        setColour (ColourIds::LightBlue, Colour (32, 164, 243));
        setColour (ColourIds::Pink, Colour (255, 16, 83));
        setColour (ColourIds::Purple, Colour (108, 110, 160));
        setColour (ColourIds::SeaGreen, Colour (21, 201, 167));
        
        // labels
        setColour (Label::textColourId, Colours::white);
        
        // buttons
        setColour (TextButton::buttonColourId, Colours::white.withAlpha (0.3f));
        setColour (TextButton::ColourIds::buttonOnColourId, findColour (ColourIds::SeaGreen));
        setColour (TextButton::textColourOffId, Colours::white);
        setColour (TextButton::textColourOnId, Colours::white);
        
        
        // sliders
        setColour (Slider::ColourIds::thumbColourId, Colours::royalblue);
        setColour (Slider::trackColourId, Colour::fromRGBA (255, 255, 255, 200));
        
        setColour (Slider::rotarySliderFillColourId,Colours::aqua);
        
        // Combo Box
        setColour (ComboBox::ColourIds::backgroundColourId, Colours::white.withAlpha (0.1f));
        setColour (ComboBox::ColourIds::textColourId, findColour (ColourIds::SeaGreen));
        setColour (ComboBox::ColourIds::arrowColourId, findColour (ColourIds::SeaGreen));
        setColour (ComboBox::ColourIds::outlineColourId, Colours::transparentBlack);
        setColour (ComboBox::ColourIds::focusedOutlineColourId, Colours::transparentBlack);
        
        // Popup Menu
        setColour (PopupMenu::ColourIds::backgroundColourId, findColour (ColourIds::DarkGrey));
        setColour (PopupMenu::ColourIds::textColourId, Colours::white);
    }
    
    
    ~PluginLookAndFeel()
    {
        
    }
    
    //==============================================================================
    Typeface::Ptr getTypefaceForFont (const Font& font) override
    {
        if (font.isBold())
            return Typeface::createSystemTypefaceFor (BinaryData::LatoBold_ttf, BinaryData::LatoBold_ttfSize);
        else if (font.isItalic())
            return Typeface::createSystemTypefaceFor (BinaryData::LatoItalic_ttf, BinaryData::LatoItalic_ttfSize);
        else
            return Typeface::createSystemTypefaceFor (BinaryData::LatoRegular_ttf, BinaryData::LatoRegular_ttfSize);
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
    
    void drawButtonBackground (Graphics& g, Button& button, const Colour& backgroundColour,
                                               bool shouldDrawButtonAsHighlighted, bool shouldDrawButtonAsDown) override
    {
        g.fillAll (backgroundColour);
    }
//
//    void drawComboBox (Graphics&, int width, int height, bool isButtonDown,
//                       int buttonX, int buttonY, int buttonW, int buttonH, ComboBox& box) override
//    {
//        g.fillAll (backgroundColour);
//    }
    
private:
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (PluginLookAndFeel)
    
};


#endif /* defined(__SoundAnalyser__PluginLookAndFeel__) */
