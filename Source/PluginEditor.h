/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic framework code for a JUCE plugin editor.

  ==============================================================================
*/

#ifndef PLUGINEDITOR_H_INCLUDED
#define PLUGINEDITOR_H_INCLUDED

#include "../JuceLibraryCode/JuceHeader.h"
#include "PluginProcessor.h"
#include "Audio Analysis/AnalysisModel.h"
#include "GUI/PluginLookAndFeel.h"
#include "GUI/SimpleAnalysisComponent.h"
#include "GUI/AnalysisSelectionComponent.h"
#include "../JuceLibraryCode/JuceHeader.h"

//==============================================================================
enum BufferSizeValues
{
    BufferSize64,
    BufferSize128,
    BufferSize256,
    BufferSize512,
    BufferSize1024,
    BufferSize2048,
    BufferSize4096,
    NumBufferSizes
};

//==============================================================================
/**
*/
class SoundAnalyserAudioProcessorEditor :   public AudioProcessorEditor,
                                            public Button::Listener,
                                            public Timer,
                                            public ValueTree::Listener,
                                            public Label::Listener,
                                            public ComboBox::Listener
{
public:
    SoundAnalyserAudioProcessorEditor (SoundAnalyserAudioProcessor& p, ValueTree& tree);
    ~SoundAnalyserAudioProcessorEditor();


    //==============================================================================
    void setValueTree (ValueTree tree);
    void refreshFromTree();
    void addAnalysis (ValueTree& analysisTree);
    
    //==============================================================================
    // Component
    void paint (Graphics&) override;
    void resized() override;
    
    //==============================================================================
    // Button::Listener
    void buttonClicked (Button* button) override;
    
    //==============================================================================
    // Timer
    void timerCallback() override;
    
    //==============================================================================
    // ValueTree::Listener
    void valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property) override;
    void valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded) override;
    void valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved, int indexFromWhichChildWasRemoved) override;
    void valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved, int oldIndex, int newIndex) override;
    void valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged) override;
    
    //==============================================================================
    // Label::Listener
    void labelTextChanged (Label* labelThatHasChanged) override;
    
    //==============================================================================
    // ComboBox::Listener
    void comboBoxChanged (ComboBox* comboBoxThatHasChanged) override;
    
    //==============================================================================
    void textEditorTextChanged (TextEditor& textEditor);
    
private:
    
    SoundAnalyserAudioProcessor& processor;
    
    //==============================================================================
    int getBufferSizeFromIndex(int index);
    int getIndexFromBufferSize(int bufferSize);
    SoundAnalyserAudioProcessor* getProcessor() const;
    double round (double val)
    {
        return floor (val + 0.5);
    }
    
    //==============================================================================
    ValueTree analyserTree;
    OwnedArray<Component> analysisComponents;
    TextButton newAnalysisButton;
    int plotX, plotY, plotHeight;
    
    Label analyserId;
    Label OSCPort;
    Label OSCPortText;
    Label IPAddressValue;
    Label IPAddressText;
    Label analyserIdText;
    Label bufferSizeText;
    Label bufferSizeValue;
    Label pluginTitleLabel;
    Label pluginVersionLabel;
    
    ComboBox bufferSizeComboBox;
    
    PluginLookAndFeel pluginLookAndFeel;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SoundAnalyserAudioProcessorEditor)
};


#endif  // PLUGINEDITOR_H_INCLUDED
