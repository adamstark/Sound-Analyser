//
//  AnalysisSelectionComponent.cpp
//  Sound Analyser
//
//  Created by Adam Stark on 16/06/2014.
//
//

#include "AnalysisSelectionComponent.h"

//==============================================================================
AnalysisSelectionComponent::AnalysisSelectionComponent(ValueTree& analyserTree_,AudioAnalysisManager *analyser_) : analyser(analyser_), analyserTree(analyserTree_)
{
    setSize(500,300);
    
    collectionList.addChangeListener(this);
    analysisList.addChangeListener(this);
    
    addAndMakeVisible(&collectionList);
    addAndMakeVisible(&analysisList);
    
    Font f(14,Font::bold);
    analysisNameLabel.setFont(f);
    
    technicalDescriptionLabel.setFont(12);
    simpleDescriptionLabel.setFont(12);
    
    technicalDescriptionLabel.setMinimumHorizontalScale(1.0);
    simpleDescriptionLabel.setMinimumHorizontalScale(1.0);
    
    simpleDescriptionLabel.setJustificationType(Justification::topLeft);
    technicalDescriptionLabel.setJustificationType(Justification::topLeft);
    
    
    addAndMakeVisible(&analysisNameLabel);
    addAndMakeVisible(&authorNameLabel);
    addAndMakeVisible(&addressPatternLabel);
    addAndMakeVisible(&technicalDescriptionLabel);
    addAndMakeVisible(&simpleDescriptionLabel);
    
    
    fillSelectionLists();
}

//==============================================================================
void AnalysisSelectionComponent::fillSelectionLists()
{
    StringArray collectionNames;
    
    // -----------------------------------------
    // create category list
    for (int i = 0;i < analyser->audioAnalyses.size();i++)
    {
        if (!collectionInArray(analyser->audioAnalyses[i]->getCollectionIdentifier()))
        {
            CollectionItem c;
            
            c.collectionName = analyser->audioAnalyses[i]->getCollectionName();
            c.collectionId = analyser->audioAnalyses[i]->getCollectionIdentifier();
            
            collections.add(c);
        }
    }
    
    // make name list
    for (int i = 0;i < collections.size();i++)
    {
        collectionNames.add(collections[i].collectionName);
    }
    
    collectionList.setContentList(collectionNames);
    
    
    // -----------------------------------------
    //analysisItems.resize(collections.size());
    
    for (int i = 0;i < collections.size();i++)
    {
        Array<AnalysisItem> items;
        
        for (int j = 0;j < analyser->audioAnalyses.size();j++)
        {
            if (analyser->audioAnalyses[j]->getCollectionIdentifier() == collections[i].collectionId)
            {
                AnalysisItem a;
                
                a.analysisName = analyser->audioAnalyses[j]->getName();
                a.analysisId = analyser->audioAnalyses[j]->getIdentifier();
                a.analysis = analyser->audioAnalyses[j];
                
                items.add(a);
                
            }
        }
        
        analysisItems.add(items);
        
    }
    
    
    
    setAnalysisList(0);
    collectionList.selectRow(0);
}

//==============================================================================
bool AnalysisSelectionComponent::collectionInArray(Identifier col)
{
    bool found = false;
    for (int j = 0;j < collections.size();j++)
    {
        if (collections[j].collectionId == col)
        {
            found = true;
        }
    }
    
    return found;
}

//==============================================================================
void AnalysisSelectionComponent::paint(Graphics& g)
{
    //g.fillAll(Colour::fromRGB(29, 114, 239));
    g.fillAll(Colours::royalblue);
}

//==============================================================================
int AnalysisSelectionComponent::getSelectedAnalysis()
{
    int selectedCollection = collectionList.getSelectedRow();
    int selectedAnalysis = analysisList.getSelectedRow();
    
    Identifier analysisId = analysisItems[selectedCollection][selectedAnalysis].analysisId;
    
    int selectedAnalysisIndex = -1;
    
    for (int i = 0;i < analyser->audioAnalyses.size();i++)
    {
        if (analyser->audioAnalyses[i]->getIdentifier() == analysisId)
        {
            selectedAnalysisIndex = i;
            break;
        }
    }
    
    return selectedAnalysisIndex;
}

//==============================================================================
void AnalysisSelectionComponent::changeListenerCallback (ChangeBroadcaster* source)
{
    if (source == &analysisList)
    {
        int currentCollection = collectionList.getSelectedRow();
        int selectedIndex = analysisList.getSelectedRow();
        
        String name = analysisItems[currentCollection][selectedIndex].analysis->getName();
        String addressPattern = analysisItems[currentCollection][selectedIndex].analysis->addressPattern;
        String author = analysisItems[currentCollection][selectedIndex].analysis->getAuthorString();
        String simpleDes = analysisItems[currentCollection][selectedIndex].analysis->getSimpleDescription();
        String technicalDes = analysisItems[currentCollection][selectedIndex].analysis->getTechnicalDescription();
        
        analysisNameLabel.setText(name, dontSendNotification);
        authorNameLabel.setText(author, dontSendNotification);
        addressPatternLabel.setText(addressPattern, dontSendNotification);
        simpleDescriptionLabel.setText(simpleDes,dontSendNotification);
        technicalDescriptionLabel.setText(technicalDes,dontSendNotification);
    }
    else if (source == &collectionList)
    {
        analysisList.selectRow(0);
        setAnalysisList(collectionList.getSelectedRow());
    }
}

//==============================================================================
void AnalysisSelectionComponent::setAnalysisList(int listIndex)
{
    StringArray analysisNameList;
    
    for (int i = 0;i < analysisItems[listIndex].size();i++)
    {
        analysisNameList.add(analysisItems[listIndex][i].analysisName);
    }
    
    analysisList.setContentList(analysisNameList);
}

//==============================================================================
void AnalysisSelectionComponent::resized()
{
    collectionList.setBounds(5,10,150,getHeight()-20);
    
    analysisList.setBounds(collectionList.getBounds().translated(155, 0));
    
    analysisNameLabel.setBounds(320,10,175,20);
    
    authorNameLabel.setBounds(320,50,175,20);
    
    addressPatternLabel.setBounds(320,80,175,20);
    
    simpleDescriptionLabel.setBounds(320,120,175,80);
    technicalDescriptionLabel.setBounds(320,210,175,80);
}