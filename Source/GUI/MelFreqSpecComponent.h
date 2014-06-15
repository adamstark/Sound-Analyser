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
#include "AnalysisModel.h"

class MelFreqSpecComponent : public Component, public Button::Listener, public ValueTree::Listener, public Label::Listener {
    
public:
    MelFreqSpecComponent(ValueTree& analysisTree_);
    ~MelFreqSpecComponent()
    {
        
    }
    
    void refreshFromTree();
    
    void resized();
    void paint(Graphics& g);
    
    /** Called when the button is clicked. */
    void buttonClicked (Button* button)
    {
        if (button == &sendButton)
        {
            bool state = sendButton.getToggleState();
            
            if (state == true)
            {
                analysisTree.setProperty(AnalysisProperties::send, 0, nullptr);
            }
            else
            {
                analysisTree.setProperty(AnalysisProperties::send, 1, nullptr);
            }
        }
        else if (button == &plotButton)
        {
            bool state = plotButton.getToggleState();
            
            if (state == true)
            {
                analysisTree.setProperty(AnalysisProperties::plot, 0, nullptr);
            }
            else
            {
                AnalysisModel::turnOffAllPlotting(analysisTree);
                analysisTree.setProperty(AnalysisProperties::plot, 1, nullptr);
            }
        }
        else if (button == &removeButton)
        {
            AnalysisModel::removeAnalysis(analysisTree);
        }
    }
    
    void valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
    {
        if (treeWhosePropertyHasChanged == analysisTree)
        {
            if (property == AnalysisProperties::send)
            {
                sendButton.setToggleState(analysisTree[AnalysisProperties::send],dontSendNotification);
            }
            else if (property == AnalysisProperties::plot)
            {
                plotButton.setToggleState(analysisTree[AnalysisProperties::plot], dontSendNotification);
            }
            else if (property == AnalysisProperties::MelFrequencySpectrum::numBins)
            {
                numMelBins.setText(treeWhosePropertyHasChanged[property], dontSendNotification);
            }
            
            resized();
        }
    }
    
    void valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded) { }
    void valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved) { }
    void valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved) { }
    void valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged) { }
    
    void labelTextChanged (Label* labelThatHasChanged)
    {
        if (labelThatHasChanged == &numMelBins)
        {
            int numBins = numMelBins.getTextValue().getValue();
            
            analysisTree.setProperty(AnalysisProperties::MelFrequencySpectrum::numBins, numBins, nullptr);
        }
    }
    
private:
    
    Label analysisName;
    TextButton sendButton;
    TextButton plotButton;
    
    TextButton removeButton;
    
    Label numMelBinsText;
    Label numMelBins;
    
    ValueTree analysisTree;
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (MelFreqSpecComponent)
    //======================================================================//
};

#endif /* defined(__SoundAnalyser__MelFreqSpecComponent__) */
