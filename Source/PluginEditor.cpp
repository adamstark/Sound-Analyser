/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic framework code for a JUCE plugin editor.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"


//==============================================================================
SoundAnalyserAudioProcessorEditor::SoundAnalyserAudioProcessorEditor (SoundAnalyserAudioProcessor& p, ValueTree& tree)
 :  AudioProcessorEditor (&p),
    processor (p),
    analyserTree (tree)
{
    newAnalysisButton.setButtonText ("+");
    addAndMakeVisible (&newAnalysisButton);
    newAnalysisButton.addListener (this);
    
    OSCPort.setText (analyserTree[AnalysisModel::Ids::Port], dontSendNotification);
    addAndMakeVisible (&OSCPort);
    
    IPAddressValue.setText (analyserTree[AnalysisModel::Ids::Port], dontSendNotification);
    addAndMakeVisible (&IPAddressValue);
    
    analyserId.setText (analyserTree[AnalysisModel::Ids::AnalyserId], dontSendNotification);
    addAndMakeVisible (&analyserId);
    
    pluginTitleLabel.setFont (40);
    pluginTitleLabel.setText ("Sound Analyser", dontSendNotification);
    addAndMakeVisible (&pluginTitleLabel);
    
    pluginVersionLabel.setFont (Font(10));
    pluginVersionLabel.setText (JucePlugin_VersionString , dontSendNotification);
    pluginVersionLabel.setColour (Label::ColourIds::textColourId, Colours::lightgrey);
    addAndMakeVisible (pluginVersionLabel);
    
    addAndMakeVisible (&bufferSizeComboBox);
    
    bufferSizeComboBox.addItem ("64", 1);
    bufferSizeComboBox.addItem ("128", 2);
    bufferSizeComboBox.addItem ("256", 3);
    bufferSizeComboBox.addItem ("512", 4);
    bufferSizeComboBox.addItem ("1024", 5);
    bufferSizeComboBox.addItem ("2048", 6);
    bufferSizeComboBox.addItem ("4096", 7);
    
    bufferSizeValue.setText (analyserTree[AnalysisModel::Ids::BufferSize].toString(), dontSendNotification);
    addAndMakeVisible (&bufferSizeValue);
    
    bufferSizeText.setText ("Buffer Size: ", dontSendNotification);
    addAndMakeVisible (&bufferSizeText);
    
    IPAddressText.setText ("IP Address:", dontSendNotification);
    addAndMakeVisible (&IPAddressText);
    
    OSCPortText.setText ("Port:", dontSendNotification);
    addAndMakeVisible (&OSCPortText);
    
    analyserIdText.setText ("Analyser Id:", dontSendNotification);
    addAndMakeVisible (&analyserIdText);
    
    plotHeight = 150;
    plotY = 40;
    
    bufferSizeComboBox.addListener (this);
    analyserTree.addListener (this);
    analyserId.addListener (this);
    OSCPort.addListener (this);
    IPAddressValue.addListener (this);
    bufferSizeValue.addListener (this);
    
    setSize (600, 500);
    
    refreshFromTree();

    startTimer (50);
}

//==============================================================================
SoundAnalyserAudioProcessorEditor::~SoundAnalyserAudioProcessorEditor()
{
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::setValueTree (ValueTree tree)
{
    analyserTree.removeListener (this);
    analyserTree = tree;
    analyserTree.addListener (this);
    
    refreshFromTree();
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::refreshFromTree()
{
    analysisComponents.clear();
    
    for (int i = 0;i < analyserTree.getNumChildren();i++)
    {
        ValueTree analysisTree = analyserTree.getChild(i);
        
        addAnalysis (analysisTree);
    }
    
    analyserId.setText (analyserTree[AnalysisModel::Ids::AnalyserId], dontSendNotification);
    
    OSCPort.setText (analyserTree[AnalysisModel::Ids::Port], dontSendNotification);
    IPAddressValue.setText (analyserTree[AnalysisModel::Ids::IPAddress], dontSendNotification);
    
    int currentBufferSize = analyserTree[AnalysisModel::Ids::BufferSize];
    
    bufferSizeComboBox.setSelectedItemIndex (getIndexFromBufferSize (currentBufferSize));
    
    resized();
}


//==============================================================================
void SoundAnalyserAudioProcessorEditor::paint (Graphics& g)
{
    //PluginLookAndFeel::fillWithBackgroundTexture (g);
    //g.setColour (Colour::fromRGBA (56, 61, 68,245));
    //g.fillAll (Colour::fromRGBA (34, 34, 34,245));
    
    g.fillAll (findColour (PluginLookAndFeel::DarkGrey));
    
    if (processor.analyser.currentAnalysisToPlotType == FloatOutput)
    {
        int N = static_cast<int> (processor.analyser.plotHistory.size());
        
        int plotX = (getWidth()- N)/2;
        
        g.setColour (Colours::white.withAlpha (0.3f));
        g.fillRect (plotX, plotY, N, plotHeight);
        
        float previousValue = processor.analyser.plotHistory[0];
        
        // get the max value
        float maxValue = -10000;
        for (int i = 0; i < N; i++)
        {
            if (processor.analyser.plotHistory[i] > maxValue)
                maxValue = processor.analyser.plotHistory[i];
        }
        
        g.setColour (findColour (PluginLookAndFeel::SeaGreen));
        
        // do the plotting
        for (int i = 0; i < N - 1; i++)
        {
            float currentValue = processor.analyser.plotHistory[i + 1];
            
            int p1 = plotY + (plotHeight - ((previousValue / maxValue) * plotHeight));
            int p2 = plotY + (plotHeight - ((currentValue / maxValue) * plotHeight));
            
            g.drawLine (plotX + i, p1, plotX + i + 1, p2, 2);
            
            previousValue = currentValue;
        }
        
    }
    else if (processor.analyser.currentAnalysisToPlotType == VectorOutput)
    {
        int N = static_cast<int> (processor.analyser.vectorPlot.size());
        int plotWidth = 512;
        
        int plotX = (getWidth() - plotWidth) / 2;
        
        g.setColour (Colours::white.withAlpha (0.3f));
        g.fillRect (plotX, plotY, plotWidth, plotHeight);
        
        g.setColour (findColour (PluginLookAndFeel::SeaGreen));
        
        float previousValue = processor.analyser.vectorPlot[0];
        
        // get the max value
        float maxValue = -10000;
        for (int i = 0; i < N; i++)
        {
            if (processor.analyser.vectorPlot[i] > maxValue)
                maxValue = processor.analyser.vectorPlot[i];
        }
        
        // do the plotting
        for (int i = 0; i < N - 1; i++)
        {
            float currentValue = processor.analyser.vectorPlot[i + 1];
            
            int p1 = plotY + (plotHeight - ((previousValue / maxValue) * plotHeight));
            int p2 = plotY + (plotHeight - ((currentValue / maxValue) * plotHeight));
            
            int x1 = i * round (512.0 / static_cast<double> (N - 1));
            int x2 = (i + 1) * round (512.0 / static_cast<double> (N - 1));
            
            g.drawLine (plotX + x1, p1, plotX + x2, p2, 2);
            
            previousValue = currentValue;
        }
    }
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::resized()
{
    bufferSizeText.setBounds (10, 10, 70, 20);
    bufferSizeComboBox.setBounds (80, 10, 60, 20);
    
    int lastComponentY = 0;
    
    for (int i = 0;i < analysisComponents.size();i++)
    {
        analysisComponents[i]->setBounds (10, (plotY + plotHeight + 25) + lastComponentY, analysisComponents[i]->getWidth(), analysisComponents[i]->getHeight());
        
        lastComponentY += analysisComponents[i]->getHeight();
    }
    
    newAnalysisButton.setBounds (10, getHeight() - 60, 50, 50);

    IPAddressText.setBounds (getWidth() - 450, 10, 80, 20);
    IPAddressValue.setBounds (getWidth() - 360, 10, 90, 20);
    
    OSCPortText.setBounds (getWidth()-260, 10, 40, 20);
    OSCPort.setBounds (getWidth()-210, 10, 40, 20);
    
    analyserIdText.setBounds (getWidth()-170, 10, 80, 20);
    analyserId.setBounds (getWidth()-80, 10, 70, 20);
    
    float titleWidth = 280;
    pluginTitleLabel.setBounds (getWidth() - titleWidth - 10, getHeight() - 60, titleWidth, 50);
    pluginVersionLabel.setBounds (getWidth() - 100, getHeight() - 15, 90, 10);
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::timerCallback()
{
    repaint();
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::buttonClicked (Button* button)
{
    if (button == &newAnalysisButton)
    {
        AlertWindow w ("Add new analysis..",
                       "Please slect a new device from the list below",
                       AlertWindow::NoIcon);
        
        std::unique_ptr<AnalysisSelectionComponent> analysisSelector = std::make_unique<AnalysisSelectionComponent> (analyserTree, &processor.analyser);
        
        w.addCustomComponent (analysisSelector.get());
        
        w.addButton ("ok",     1, KeyPress (KeyPress::returnKey, 0, 0));
        w.addButton ("cancel", 0, KeyPress (KeyPress::escapeKey, 0, 0));
        w.setColour (AlertWindow::ColourIds::backgroundColourId, Colours::lightgrey);
        
        
        if (w.runModalLoop() != 0) // if they picked 'ok'
        {
            const int optionIndexChosen = analysisSelector->getSelectedAnalysis();
            
            if (optionIndexChosen >= 0)
            {
                AudioAnalysis *chosenAnalysis = processor.analyser.audioAnalyses[optionIndexChosen];
                AnalysisModel::addNewAnalysis (analyserTree, chosenAnalysis->createAnalysisTree());
            }
        }  
    }
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::labelTextChanged (Label* labelThatHasChanged)
{
    if (labelThatHasChanged == &analyserId)
    {
        analyserTree.setProperty (AnalysisModel::Ids::AnalyserId, analyserId.getText(), nullptr);
    }
    else if (labelThatHasChanged == &OSCPort)
    {
        analyserTree.setProperty (AnalysisModel::Ids::Port, OSCPort.getText(), nullptr);
    }
    else if (labelThatHasChanged == &IPAddressValue)
    {
        analyserTree.setProperty (AnalysisModel::Ids::IPAddress, IPAddressValue.getText(),nullptr);
    }
    else if (labelThatHasChanged == &bufferSizeValue)
    {
        AnalysisModel::setBufferSize (analyserTree, bufferSizeValue.getTextValue().getValue());
    }
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::textEditorTextChanged (TextEditor& textEditor)
{
    
    analyserTree.setProperty (AnalysisModel::Ids::AnalyserId, textEditor.getText(), nullptr);
    
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::addAnalysis(ValueTree& analysisTree)
{
    for (int i = 0; i < processor.analyser.audioAnalyses.size(); i++)
    {
        if (analysisTree.getType() == processor.analyser.audioAnalyses[i]->getIdentifier())
            analysisComponents.add (processor.analyser.audioAnalyses[i]->getGUIComponent (analysisTree));
    }
    
    addChildComponent (analysisComponents.getLast());
    analysisComponents.getLast()->setVisible (true);
    
    resized();
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::comboBoxChanged (ComboBox* comboBoxThatHasChanged)
{
    if (comboBoxThatHasChanged == &bufferSizeComboBox)
    {
        int selectedItem = bufferSizeComboBox.getSelectedItemIndex();
        
        AnalysisModel::setBufferSize (analyserTree, getBufferSizeFromIndex (selectedItem));
    }
}

//==============================================================================
int SoundAnalyserAudioProcessorEditor::getBufferSizeFromIndex(int index)
{
    int minBufferSize = 64;
    
    return minBufferSize * powl (2, index);
}

//==============================================================================
int SoundAnalyserAudioProcessorEditor::getIndexFromBufferSize (int bufferSize)
{
    if (bufferSize == 64)
    {
        return BufferSize64;
    }
    else if (bufferSize == 128)
    {
        return BufferSize128;
    }
    else if (bufferSize == 256)
    {
        return BufferSize256;
    }
    else if (bufferSize == 512)
    {
        return BufferSize512;
    }
    else if (bufferSize == 1024)
    {
        return BufferSize1024;
    }
    else if (bufferSize == 2048)
    {
        return BufferSize2048;
    }
    else if (bufferSize == 4096)
    {
        return BufferSize4096;
    }
    else
    {
        return BufferSize64;
    }
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::valueTreePropertyChanged (ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
{
    if (property == AnalysisModel::Ids::AnalyserId)
    {
        refreshFromTree();
    }
    else if (property == AnalysisModel::Ids::IPAddress)
    {
        refreshFromTree();
    }
    else if (property == AnalysisModel::Ids::Port)
    {
        refreshFromTree();
    }
    else if (property == AnalysisModel::Ids::BufferSize)
    {
        int newBufferSize = analyserTree[property];
        
        bufferSizeComboBox.setSelectedItemIndex (getIndexFromBufferSize(newBufferSize));
    }
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::valueTreeChildAdded (ValueTree& parentTree, ValueTree& childWhichHasBeenAdded)
{
    addAnalysis (childWhichHasBeenAdded);
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::valueTreeChildRemoved (ValueTree& parentTree, ValueTree& childWhichHasBeenRemoved, int indexFromWhichChildWasRemoved)

{
    refreshFromTree();
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::valueTreeChildOrderChanged (ValueTree& parentTreeWhoseChildrenHaveMoved, int oldIndex, int newIndex)
{
    
}

//==============================================================================
void SoundAnalyserAudioProcessorEditor::valueTreeParentChanged (ValueTree& treeWhoseParentHasChanged)
{
    
}
