//=======================================================================
/** @file AnalysisModel.cpp
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

#include "AnalysisModel.h"

// instantiate static variables
const Identifier AnalysisModel::Ids::SOUNDANALYSER("SoundAnalyser");
const Identifier AnalysisModel::Ids::AnalyserId("AnalyserId");
const Identifier AnalysisModel::Ids::BufferSize("BufferSize");
const Identifier AnalysisModel::Ids::Port("Port");
const Identifier AnalysisModel::Ids::IPAddress("IPAddress");

// Analysis Properties
const Identifier AnalysisProperties::send("Send");
const Identifier AnalysisProperties::plot("Plot");
const Identifier AnalysisProperties::name("Name");
const Identifier AnalysisProperties::FFT::numSamplesToSend("NumSamplesToSend");
const Identifier AnalysisProperties::MelFrequencySpectrum::numBins("NumBins");

int AnalysisModel::currentHostFrameSize = DEFAULT_BUFFER_SIZE;

//==============================================================================
AnalysisModel::AnalysisModel()
{
    
}

//==============================================================================
ValueTree AnalysisModel::createAnalyserTree()
{
    ValueTree analyserTree(Ids::SOUNDANALYSER);
    
    analyserTree.setProperty(Ids::AnalyserId,1,nullptr);
    
    analyserTree.setProperty(Ids::BufferSize,DEFAULT_BUFFER_SIZE,nullptr);
    
    analyserTree.setProperty(Ids::Port,DEFAULT_OSC_PORT,nullptr);
    
    analyserTree.setProperty(Ids::IPAddress, "127.0.0.1", nullptr);
    
    return analyserTree;
}

//==============================================================================
void AnalysisModel::addNewAnalysis(ValueTree analyserTree, ValueTree newNode)
{  
    analyserTree.addChild(newNode, -1, nullptr);
}

//==============================================================================
void AnalysisModel::turnOffAllPlotting(ValueTree analyserTree)
{
    for (int i = 0;i < analyserTree.getNumChildren();i++)
    {
        analyserTree.getChild(i).setProperty(AnalysisProperties::plot, 0, nullptr);
    }
}

//==============================================================================
void AnalysisModel::removeAnalysis(ValueTree analysisTree)
{
    ValueTree mainTree = analysisTree.getParent();
    
    mainTree.removeChild(analysisTree, nullptr);
}

//==============================================================================
void AnalysisModel::setBufferSize(ValueTree analyserTree,int bufferSize)
{
    if (bufferSize >= currentHostFrameSize)
    {
        analyserTree.setProperty(Ids::BufferSize, bufferSize, nullptr);
        
    }
    else
    {
        int currentBufferSize = analyserTree[Ids::BufferSize];
        
        if (currentBufferSize != currentHostFrameSize)
        {
            analyserTree.setProperty(Ids::BufferSize, currentHostFrameSize, nullptr);
        }
        else
        {
            analyserTree.sendPropertyChangeMessage(Ids::BufferSize);
        }
    }
}


