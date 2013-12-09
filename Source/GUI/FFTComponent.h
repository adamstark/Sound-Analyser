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
#include "AnalysisModel.h"

class FFTComponent : public Component, public Button::Listener, public ValueTree::Listener, public Label::Listener {
    
public:
    FFTComponent(ValueTree& analysisTree_);
    ~FFTComponent()
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
            else if (property == AnalysisProperties::FFT::numSamplesToSend)
            {
                numFFTSamples.setText(treeWhosePropertyHasChanged[property], dontSendNotification);
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
        if (labelThatHasChanged == &numFFTSamples)
        {
            int numSamples = numFFTSamples.getTextValue().getValue();
            
            ValueTree analyserTree = analysisTree.getParent();
            
            int bufferSize = analyserTree[AnalysisModel::Ids::BufferSize];
            
            if (numSamples > bufferSize/2)
            {
                numSamples = bufferSize/2;
            }
            
            analysisTree.setProperty(AnalysisProperties::FFT::numSamplesToSend, numSamples, nullptr);
        }
    }
    
private:
    
    Label analysisName;
    TextButton sendButton;
    TextButton plotButton;
    
    TextButton removeButton;
    
    Label numFFTSamplesText;
    Label numFFTSamples;
    
    ValueTree analysisTree;
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (FFTComponent)
    //======================================================================//
};

#endif /* defined(__SoundAnalyser__FFTComponent__) */
