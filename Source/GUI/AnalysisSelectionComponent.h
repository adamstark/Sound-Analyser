//=======================================================================
/** @file AnalysisSelectionComponent.h
 *  @brief A dialog allowing the user to select and add an audio analysis module
 *  @author Adam Stark
 *  @copyright Copyright (C) 2014  Adam Stark
 *
 * This file is part of Sound Analyser.
 *
 * Sound Analyser is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Sound Analyser is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Sound Analyser.  If not, see <http://www.gnu.org/licenses/>.
 */
//=======================================================================

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
