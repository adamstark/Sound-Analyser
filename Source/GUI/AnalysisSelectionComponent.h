//
//  AnalysisSelectionComponent.h
//  Sound Analyser
//
//  Created by Adam Stark on 16/06/2014.
//
//

#ifndef __Sound_Analyser__AnalysisSelectionComponent__
#define __Sound_Analyser__AnalysisSelectionComponent__

#include "../../JuceLibraryCode/JuceHeader.h"
#include "ItemListComponent.h"
//#include "AnalysisModel.h"
//#include "../Audio Analysis/AudioAnalysis.h"
#include "../Audio Analysis/AudioAnalysisManager.h"

class AnalysisSelectionComponent : public Component, public ChangeListener
{
public:
    
    struct CollectionItem
    {
        String collectionName;
        Identifier collectionId;
    };
    
    struct AnalysisItem
    {
        String analysisName;
        Identifier analysisId;
        AudioAnalysis *analysis;
    };
    
    AnalysisSelectionComponent(ValueTree& analyserTree_,AudioAnalysisManager *analyser_) : analyser(analyser_), analyserTree(analyserTree_)
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
        
        
        
        
        //technicalDescription.setMultiLine(true);
        //technicalDescription.setText("Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah ",dontSendNotification);
//        technicalDescription.setEnabled(false);

        
        
        fillSelectionLists();
    }
    
    void fillSelectionLists()
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
    
    bool collectionInArray(Identifier col)
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
    
    void paint(Graphics& g)
    {
        //g.fillAll(Colour::fromRGB(29, 114, 239));
        g.fillAll(Colours::royalblue);
    }
    
    int getSelectedAnalysis()
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
    
    
    void changeListenerCallback (ChangeBroadcaster* source)
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
    
    void setSelectedAnalysis(int analysisIndex)
    {
//        analysisNameLabel.setText(analysisList.getCurrentlySelectedItem(), dontSendNotification);
    }
    
    void setAnalysisList(int listIndex)
    {
        StringArray analysisNameList;
        
        for (int i = 0;i < analysisItems[listIndex].size();i++)
        {
            analysisNameList.add(analysisItems[listIndex][i].analysisName);
        }
        
        analysisList.setContentList(analysisNameList);
    }
    
    void resized()
    {
        collectionList.setBounds(10,10,150,getHeight()-20);
        
        analysisList.setBounds(collectionList.getBounds().translated(160, 0));
        
        analysisNameLabel.setBounds(330,10,160,20);
        
        authorNameLabel.setBounds(330,50,160,20);
        
        addressPatternLabel.setBounds(330,80,160,20);
        
        simpleDescriptionLabel.setBounds(330,120,160,80);
        technicalDescriptionLabel.setBounds(330,210,160,80);
        

    }

private:
    
    AudioAnalysisManager *analyser;
    ValueTree analyserTree;
    
    Array<CollectionItem> collections;
    Array<Array<AnalysisItem>> analysisItems;
    
    ItemListComponent collectionList;
    ItemListComponent analysisList;
    
    Label analysisNameLabel;
    
    Label authorNameLabel;
    Label addressPatternLabel;
    

    Label technicalDescriptionLabel;
    Label simpleDescriptionLabel;
    
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(AnalysisSelectionComponent)
};

#endif /* defined(__Sound_Analyser__AnalysisSelectionComponent__) */
