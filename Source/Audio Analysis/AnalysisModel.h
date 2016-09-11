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

#ifndef _SOUNDANALYSER_ANALYSISMODEL_
#define _SOUNDANALYSER_ANALYSISMODEL_

#define DEFAULT_BUFFER_SIZE 1024
#define DEFAULT_OSC_PORT 8000

#include "../JuceLibraryCode/JuceHeader.h"

//======================================================================
struct AnalysisProperties
{
    static const Identifier send;               /**< The 'send' identifier */
    static const Identifier plot;               /**< The 'plot' identifier */
    static const Identifier name;               /**  The audio analysis name identifier */
    
    struct FFT {
        static const Identifier numSamplesToSend;
    };
    
    struct MelFrequencySpectrum {
        static const Identifier numBins;
    };
    
};

//======================================================================
/** Defines the core structure and properties of the Sound Analyser plug-in */
class AnalysisModel {
    
public:
    
    /** Creates a new ValueTree node representing the Sound Analyser and its properties
     * @returns a ValueTree node representing the plug-in state
     */
    static ValueTree createAnalyserTree();
    
    /** Adds a new audio analysis module to the plug-in main tree 
     * @param analyserTree the analyser tree node
     * @param newNode the tree node representing the new audio analysis module 
     */
    static void addNewAnalysis (ValueTree analyserTree, ValueTree newNode);
    
    /** Sets plotting to false for all modules on the analyserTree
     * @param analyserTree the main application tree
     */
    static void turnOffAllPlotting (ValueTree analyserTree);
    
    /** Removes an analysis module from the main tree
     * @param analysisTree the node to remove
     */
    static void removeAnalysis (ValueTree analysisTree);
    
    /** Sets the buffer size to be used in the plug-in
     * @param analyserTree the main application tree
     * @param bufferSize the new buffer size
     */
    static void setBufferSize (ValueTree analyserTree,int bufferSize);
    
    /** Holds the current host frame size */
    static int currentHostFrameSize;
    
    //======================================================================
    struct Ids
    {
        static const Identifier SOUNDANALYSER;                      /**<  The Sound Analyser identifier */
        static const Identifier AnalyserId;                         /**<  Id to uniquely identify the analyser */
        static const Identifier Port;                               /**<  The OSC port identifier */
        static const Identifier IPAddress;                          /**<  The OSC IP address identifier */
        static const Identifier BufferSize;                         /**<  The buffer size identifier */
    };
    
private:
    
    //===================== private methods ======================//
    
    /** constructor */
    AnalysisModel();
    
    
    //======================================================================//
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (AnalysisModel);
    //======================================================================//
};

#endif /* defined(__SoundAnalyser__AnalysisModel__) */
