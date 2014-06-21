//
//  FFTComponent.h
//  SoundAnalyser
//
//  Created by Adam Stark on 04/12/2013.
//
//

#ifndef __SoundAnalyser__FFTComponent__
#define __SoundAnalyser__FFTComponent__

#include "../../JuceLibraryCode/JuceHeader.h"
#include "../../Audio Analysis/AnalysisModel.h"
#include "../SimpleAnalysisComponent.h"

class FFTComponent : public SimpleAnalysisComponent, public Label::Listener {
    
public:
    FFTComponent(ValueTree& analysisTree_);
   
    //======================================================================
    void customComponentPropertyChange(ValueTree& treeWhosePropertyHasChanged, const Identifier& property);
    void customComponentResized();
    void customComponentRefreshFromTree();
    
    //======================================================================
    void labelTextChanged (Label* labelThatHasChanged);
    
private:
    
    Label numFFTSamplesText;
    Label numFFTSamples;
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (FFTComponent)
    //======================================================================//
};

#endif /* defined(__SoundAnalyser__FFTComponent__) */
