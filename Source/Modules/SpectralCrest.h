//=======================================================================
/** @file SpectralCrest.h
 *  @brief The Spectral Crest audio analysis module
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

#ifndef _SOUNDANALYSER_SPECTRALCREST_
#define _SOUNDANALYSER_SPECTRALCREST_

#include "AudioAnalysis.h"
#include <cmath>

class SpectralCrest : public AudioAnalysis
{
public:
    
    //==============================================================================
    SpectralCrest() : spectralCrestOutputValue(0.0)
    {
        
    }
    
    //==============================================================================
    String getName()
    {
        return "Spectral Crest";
    }
    
    //==============================================================================
    void performAnalysis(std::vector<float> magnitudeSpectrum)
    {
        spectralCrestOutputValue = fdf.spectralCrest(magnitudeSpectrum);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return spectralCrestOutputValue;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/spectralCrest";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("SpectralCrest");
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
        return "The ratio of the maximum value in the power spectrum to the mean";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "A measure of how tonal the signal is";
    }
    
    //==============================================================================
    OutputType getOutputType()
    {
        return FloatOutput;
    }
    
    //==============================================================================
    InputType getInputType()
    {
        return MagnitudeSpectrumInput;
    }
    
private:
    
    CoreFrequencyDomainFeatures<float> fdf;
    
    float spectralCrestOutputValue;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SpectralCrest)
};

#endif
