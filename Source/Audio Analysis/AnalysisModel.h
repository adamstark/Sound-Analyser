//=======================================================================
/** @file AnalysisModel.h
 *  @brief The ValueTree model for the Sound Analyser plug-in
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
    
    struct MelFrequencySpectrum {
        static const Identifier numBins;
    };
    
};

class AnalysisModel {
    
public:
        
    static ValueTree createAnalyserTree();
    
    static void addNewAnalysis(ValueTree analyserTree, ValueTree newNode);
    
    static void turnOffAllPlotting(ValueTree analysisTree);
    
    static void removeAnalysis(ValueTree analysisTree);
    
    static void setBufferSize(ValueTree analyserTree,int bufferSize);
    
    static int currentHostFrameSize;
    
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
