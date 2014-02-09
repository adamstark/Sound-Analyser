//
//  AnalysisModel.h
//  SoundAnalyser
//
//  Created by Adam Stark on 04/08/2013.
//
//

#ifndef __SoundAnalyser__AnalysisModel__
#define __SoundAnalyser__AnalysisModel__

#define DEFAULT_BUFFER_SIZE 1024
#define DEFAULT_OSC_PORT 8000

#include "../JuceLibraryCode/JuceHeader.h"

//----------------------------------------
struct AnalysisProperties
{
    static const Identifier send;
    static const Identifier plot;
    static const Identifier name;
    
    struct FFT {
        static const Identifier numSamplesToSend;
    };
    
};

class AnalysisModel {
    
public:
        
    static ValueTree createAnalyserTree();
    
    static void addNewAnalysis(ValueTree analyserTree, ValueTree newNode);
    
    static void turnOffAllPlotting(ValueTree analysisTree);
    
    static void removeAnalysis(ValueTree analysisTree);
    
    
    struct Ids
    {
        static const Identifier SOUNDANALYSER;                /**<  */
        static const Identifier AnalyserId;
        static const Identifier Port;
        static const Identifier IPAddress;
        static const Identifier BufferSize;
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
