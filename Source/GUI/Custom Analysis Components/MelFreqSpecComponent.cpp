//=======================================================================
/** @file MelFreqSpecComponent.cpp
 *  @brief A custom component for the MelFrequencySpectrum module
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

#include "MelFreqSpecComponent.h"

//==============================================================================
MelFreqSpecComponent::MelFreqSpecComponent (ValueTree& tree)
 : SimpleAnalysisComponent (tree)
{   
    numMelBinsText.setText("# Bins", dontSendNotification);
    addAndMakeVisible(&numMelBinsText);
    
    numMelBins.setText ("13", dontSendNotification);
    addAndMakeVisible (&numMelBins);
    
    numMelBins.addListener(this);
    
    refreshFromTree();
}



//==============================================================================
void MelFreqSpecComponent::customComponentPropertyChange(ValueTree& treeWhosePropertyHasChanged, const Identifier& property)
{
    if (property == AnalysisProperties::MelFrequencySpectrum::numBins)
        numMelBins.setText(treeWhosePropertyHasChanged[property], dontSendNotification);
}

//==============================================================================
void MelFreqSpecComponent::customComponentResized()
{
    numMelBinsText.setBounds (400, 0, 70, 20);
    numMelBins.setBounds (480, 0, 40, 20);
}

//==============================================================================
void MelFreqSpecComponent::customComponentRefreshFromTree()
{
    int numBins = analysisTree[AnalysisProperties::MelFrequencySpectrum::numBins];
    numMelBins.setText(String(numBins), dontSendNotification);
}

//==============================================================================
void MelFreqSpecComponent::labelTextChanged (Label* labelThatHasChanged)
{
    if (labelThatHasChanged == &numMelBins)
    {
        int numBins = numMelBins.getTextValue().getValue();
        analysisTree.setProperty(AnalysisProperties::MelFrequencySpectrum::numBins, numBins, nullptr);
    }
}

