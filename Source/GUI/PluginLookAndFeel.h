//
//  PluginLookAndFeel.h
//  SoundAnalyser
//
//  Created by Adam Stark on 02/02/2014.
//
//

#ifndef __SoundAnalyser__PluginLookAndFeel__
#define __SoundAnalyser__PluginLookAndFeel__

#include "../JuceLibraryCode/JuceHeader.h"

//#include "../../JuceLibraryCode/BinaryData.h"

class PluginLookAndFeel : public LookAndFeel_V3
{
public:
    PluginLookAndFeel()
    {
        // labels
        setColour(Label::textColourId, Colours::white);
        
        // buttons
        setColour (TextButton::buttonColourId, Colour::fromRGB(29, 114, 239));
        setColour(TextButton::textColourOffId, Colours::white);
        setColour (TextButton::ColourIds::buttonOnColourId, Colours::aquamarine);
        
        // sliders
        setColour (Slider::ColourIds::thumbColourId, Colours::royalblue);
        setColour (Slider::trackColourId,               Colour::fromRGBA(255, 255, 255, 200));
        
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
