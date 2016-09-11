//=======================================================================
/** @file PeakEnergy.h
 *  @brief The Peak Energy audio analysis module
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

#ifndef __SoundAnalyser__PeakEnergy__
#define __SoundAnalyser__PeakEnergy__

#include "AudioAnalysis.h"
#include <cmath>

class PeakEnergy : public AudioAnalysis
{
public:
    
    //==============================================================================
    PeakEnergy()
    {        
        peakEnergyOutputValue = 0.0;
    }
    
    //==============================================================================
    String getName()
    {
        return "Peak Energy";
    }
    
    //==============================================================================
    void performAnalysis (std::vector<float> audioFrame)
    {
        peakEnergyOutputValue = tdf.peakEnergy(audioFrame);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return peakEnergyOutputValue;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/peakEnergy";
    }
        
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("PeakEnergy");
    }
    
    //==============================================================================
    Identifier getCollectionIdentifier()
    {
        return Identifier("Gist");
    }
    
    //==============================================================================
    String getCollectionName()
    {
        return "Gist";
    }
    
    //==============================================================================
    String getAuthorString()
    {
        return "Adam Stark";
    }
    
    //==============================================================================
    String getTechnicalDescription()
    {
        return "The maximum observed signal value in each audio frame";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "An indication of signal energy or loudness";
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return FloatOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return AudioBufferInput;
    }
    
private:
    
    CoreTimeDomainFeatures<float> tdf;
    
    float peakEnergyOutputValue;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (PeakEnergy)
};

#endif /* defined(__SoundAnalyser__PeakEnergy__) */
