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

class AnalysisModel {
    
public:
    
    enum Analyses
    {
        RMS,
        PeakEnergy,
        SpectralCentroid,
        NumAnalyses
    };
    
    static String getAnalysisName(int analysisID);
  
    static void addNewAnalysis(ValueTree analysisTree, int analysisID);
    
    struct AnalysisTypes
    {
        static const Identifier RMS;
        static const Identifier PeakEnergy;
        static const Identifier SpectralCentroid;
    };
    
    struct AnalysisProperties
    {
        static const Identifier send;
        static const Identifier plot;
    };
    
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
