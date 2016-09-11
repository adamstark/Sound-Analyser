//=======================================================================
/** @file Pitch.h
 *  @brief The Pitch detection audio analysis module
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

#ifndef SoundAnalyser_PitchYin_h
#define SoundAnalyser_PitchYin_h

#include "../Audio Analysis/AudioAnalysis.h"

class Pitch : public AudioAnalysis
{
public:
    
    //==============================================================================
    Pitch (int frameSize, int sampleRate) : yin (sampleRate), pitchOutputValue (0.0)
    {

    }
    
    //==============================================================================
    String getName()
    {
        return "Pitch";
    }
    
    //==============================================================================
    void performAnalysis (std::vector<float> audioFrame)
    {
        pitchOutputValue = yin.pitchYin(audioFrame);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return pitchOutputValue;
    }
    
    //==============================================================================
    void setSamplingFrequency(int fs)
    {
        yin.setSamplingFrequency(fs);
    }
    
    //==============================================================================
    void setInputAudioFrameSize (int frameSize)
    {

    }
        
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/pitch";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("Pitch");
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
        return "An implementation of the Yin pitch detection algorithm by de Cheveigne and Kawahara (2002). Output in Hz.";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "An estimation of the pitch in Hz of a sound - for use on monophonic signals only";
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
    
    Yin<float> yin;
    
    float pitchOutputValue;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (Pitch)
};

#endif
