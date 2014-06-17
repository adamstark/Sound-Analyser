//
//  FFTComponent.h
//  SoundAnalyser
//
//  Created by Adam Stark on 04/12/2013.
//
//

#ifndef __SoundAnalyser__MelFreqSpecComponent__
#define __SoundAnalyser__MelFreqSpecComponent__

#include "../../JuceLibraryCode/JuceHeader.h"
#include "../../Audio Analysis/AnalysisModel.h"
#include "../SimpleAnalysisComponent.h"

class MelFreqSpecComponent : public SimpleAnalysisComponent, public Label::Listener {
    
public:
    MelFreqSpecComponent(ValueTree& analysisTree_);
    
    //==============================================================================
    void customComponentPropertyChange(ValueTree& treeWhosePropertyHasChanged, const Identifier& property);
    void customComponentResized();
    void customComponentRefreshFromTree();

    //==============================================================================
    void labelTextChanged (Label* labelThatHasChanged);
    
private:
    
    Label numMelBinsText;
    Label numMelBins;
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (MelFreqSpecComponent)
    //======================================================================//
};

#endif /* defined(__SoundAnalyser__MelFreqSpecComponent__) */
