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
    
    enum AnalysisIds
    {
        RMS,
        PeakEnergy,
        SpectralCentroid,
        NumAnalysisTypes
    };
    
    static ValueTree createAnalyserTree()
    {
        ValueTree analyserTree(Ids::SOUNDANALYSER);
        
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
    
    struct Ids
    {
        static const Identifier SOUNDANALYSER;                /**<  */
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
