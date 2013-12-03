//
//  AnalysisModel.h
//  SoundAnalyser
//
//  Created by Adam Stark on 04/08/2013.
//
//

#ifndef __SoundAnalyser__AnalysisModel__
#define __SoundAnalyser__AnalysisModel__

#include "../JuceLibraryCode/JuceHeader.h"

//---------------------------
struct AnalysisTypes
{
    static const Identifier RMS;
    static const Identifier PeakEnergy;
    static const Identifier SpectralCentroid;
    static const Identifier ZeroCrossingRate;
    static const Identifier SpectralDifference;
    static const Identifier StandardDeviation;
};

//----------------------------------------
struct AnalysisProperties
{
    static const Identifier send;
    static const Identifier plot;
    
//    struct RMS {
//        static const Identifier something;
//    };
    
};

class AnalysisModel {
    
public:
        
    static ValueTree createAnalyserTree()
    {
        ValueTree analyserTree(Ids::SOUNDANALYSER);
        
        analyserTree.setProperty(Ids::AnalyserId,1,nullptr);
        
        return analyserTree;
    }
        
    static String getAnalysisName(Identifier analysisType);
  
    static void addNewAnalysis(ValueTree analysisTree, int analysisId);
    
    static StringArray getAllAnalysisNames();
    
    static void turnOffAllPlotting(ValueTree analysisTree)
    {
        ValueTree mainTree = analysisTree.getParent();
        
        for (int i = 0;i < mainTree.getNumChildren();i++)
        {
            mainTree.getChild(i).setProperty(AnalysisProperties::plot, 0, nullptr);
        }
    }
    
    static void removeAnalysis(ValueTree analysisTree)
    {
        ValueTree mainTree = analysisTree.getParent();
        
        mainTree.removeChild(analysisTree, nullptr);
    }
    
    static Array<Identifier> analysisList;
    
    static Array<Identifier> buildAnalysisList()
    {
        Array<Identifier> analysisList;
        
        analysisList.add(AnalysisTypes::RMS);
        analysisList.add(AnalysisTypes::PeakEnergy);
        analysisList.add(AnalysisTypes::ZeroCrossingRate);
        analysisList.add(AnalysisTypes::SpectralCentroid);
        analysisList.add(AnalysisTypes::SpectralDifference);
        analysisList.add(AnalysisTypes::StandardDeviation);
        
        return analysisList;
    }
    
    struct Ids
    {
        static const Identifier SOUNDANALYSER;                /**<  */
        static const Identifier AnalyserId;
    };
    
private:
    
    //===================== private methods ======================//
    
    /** constructor */
    AnalysisModel();
    
    //================== private member variables ================//
    
    // none as yet...
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(AnalysisModel);
    //======================================================================//
};

#endif /* defined(__SoundAnalyser__AnalysisModel__) */