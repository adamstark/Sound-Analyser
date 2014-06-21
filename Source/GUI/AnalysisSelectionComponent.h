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
    
    AnalysisSelectionComponent(ValueTree& analyserTree_,AudioAnalysisManager *analyser_);
    
    void fillSelectionLists();
    
    bool collectionInArray(Identifier col);
    
    void paint(Graphics& g);
    
    int getSelectedAnalysis();
    
    void changeListenerCallback (ChangeBroadcaster* source);
    
    void setAnalysisList(int listIndex);
    
    void resized();

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
