//=======================================================================
/** @file AudioAnalysisManager.h
 *  @brief A class to manage audio input and all audio analysis modules
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

#ifndef _SOUNDANALYSER_AUDIOANALYSISMANAGER_
#define _SOUNDANALYSER_AUDIOANALYSISMANAGER_

//=======================================================================
#include "../../Libs/Gist/src/Gist.h"
#include "AudioAnalysisBuffer.h"
#include "AudioAnalysis.h"




//=======================================================================
// import all audio analysis modules
#include "../Modules/RMS.h"
#include "../Modules/PeakEnergy.h"
#include "../Modules/ZeroCrossingRate.h"
#include "../Modules/SpectralCentroid.h"
#include "../Modules/SpectralCrest.h"
#include "../Modules/SpectralDifference.h"
#include "../Modules/SpectralFlatness.h"
#include "../Modules/FFTMagnitudeSpectrum.h"
#include "../Modules/Pitch.h"
#include "../Modules/MelFrequencySpectrum.h"
#include "../Modules/SP_Chromagram.h"
#include "../Modules/SP_ChordDetector.h"

//=======================================================================
#include "../JuceLibraryCode/JuceHeader.h"

#define DEFAULT_SAMPLING_FREQUENCY 44100

//=======================================================================
/** A class to manage audio input and all audio analysis modules
 */
class AudioAnalysisManager
{

public:
    
    //=======================================================================
    /** Constructor */
    AudioAnalysisManager (int bufferSize);
    
    /** Destructor */
    ~AudioAnalysisManager();
    
    //=======================================================================
    /** Passes the audio buffer through a number of analysis algorithms
     * @param buffer the audio buffer containing the audio samples
     * @param numSamples the number of audio samples in the buffer
     */
    void analyseAudio (float* buffer, int numSamples);

    //=======================================================================
    /** Sets the analyser Id string, which will be prepended to all
     * OSC messages
     * @param analyserId the analyser Id
     */
    void setAnalyserIdString (std::string analyserId);
    
    /** Set the audio buffer size to be used for audio analysis. Note that this is
     * not (necessarily) the host audio frame size as the AudioAnalysisManager will 
     * use an AudioBuffer object to manage audio buffer sizes
     * @param bufferSize_ the new audio buffer size to use
     */
    void setBufferSize (int bufferSize);
    
    /** Sets the network port to be used for sending OSC messages
     * @param oscPort the port to send OSC messages to
     */
    void setOSCPort (int oscPort);
    
    /** Sets the IP address to be used
     * @param IPAddress the new IP address
     */
    void setIPAddress (std::string remoteHostIPAddress);
    
    /** Update the AudioAnalysisManager with the host sampling frequency
     * @param fs the sampling frequency
     */
    void setSamplingFrequency (int fs);
    
    /** Update the AudioAnalysisManager with the host audio frame size
     * @param frameSize the audio frame size of the host
     */
    void setHostFrameSize (int frameSize);
    
    //=======================================================================
    /** Resets the plotHistory to zeros */
    void clearPlotHistory();
    
    /** An array of AudioAnalysis objects */
    OwnedArray<AudioAnalysis> audioAnalyses;
    
    /** The current audio analysis plot type */
    std::atomic<OutputType> currentAnalysisToPlotType;
    
    /** A vector containing time domain data to be plotted in the plug-in GUI */
    std::vector<float> plotHistory;
    
    /** A vector containing the data to be plotted for an audio analysis algorithm that returns vectors */
    std::vector<float> vectorPlot;
    
private:
 
    /** Add a new sample to the plot history
     * @param newSample the new sample to add to the plot history
     */
    void updatePlotHistory (float newSample);
    
    /** Register all audio analysis algorithms that will be available in the plug-in */
    void addAudioAnalysisAlgorithms();
    
    /** Resamples a vector to the correct length for plotting */
    std::vector<float> resamplePlot (std::vector<float> v);
    
    /** Updates the vector plot with the latest vector result */
    void updateVectorPlot (std::vector<float> v);
    
    /** The audio buffer size used by the plug-in to calculate audio analyses */
    int bufferSize;
    
    /** allows osc to be sent to a specific ip address and port number */
    OSCSender osc;
    
    /** An AudioAnalysisBuffer object to manage audio buffers when new audio frames are received from the host */
    AudioAnalysisBuffer audioBuffer;
    
    /** An instance of the gist audio analysis library */
    Gist<float> gist;
    
    /** The port to send to */
    int port;
    
    /** The remote host IP address to send to */
    String ipAddress;
    
    /** Lock for updating osc object */
    CriticalSection lock;
    
    WeakReference<AudioAnalysisManager>::Master masterReference;
    friend class WeakReference<AudioAnalysisManager>;
    
    //=======================================================================
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (AudioAnalysisManager)
    //=======================================================================
};

#endif /* defined(__SoundAnalyser__AudioAnalysisManager__) */
