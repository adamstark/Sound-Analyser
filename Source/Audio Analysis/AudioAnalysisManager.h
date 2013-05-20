//
//  AudioAnalysisManager.h
//  SoundAnalyser
//
//  Created by Adam Stark on 19/05/2013.
//
//

#ifndef __SoundAnalyser__AudioAnalysisManager__
#define __SoundAnalyser__AudioAnalysisManager__

#include "../JuceLibraryCode/JuceHeader.h"
#include "OSCSender.h"
#include "SignalEnergy.h"
#include <iostream>

class AudioAnalysisManager {

public:
    /** constructor */
    AudioAnalysisManager();
    
    void analyseAudio(float* buffer,int numSamples);
    
    
private:
    
    OSCSender osc;
    
    SignalEnergy signalEnergy;
};

#endif /* defined(__SoundAnalyser__AudioAnalysisManager__) */
