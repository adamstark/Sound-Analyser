//
//  AnalysisModel.cpp
//  SoundAnalyser
//
//  Created by Adam Stark on 04/08/2013.
//
//

#include "AnalysisModel.h"

// instantiate static variables
const Identifier AnalysisModel::Ids::SOUNDANALYSER("SoundAnalyser");
const Identifier AnalysisModel::Ids::AnalyserId("AnalyserId");
const Identifier AnalysisModel::Ids::BufferSize("BufferSize");
const Identifier AnalysisModel::Ids::Port("Port");
const Identifier AnalysisModel::Ids::IPAddress("IPAddress");

// Analysis Types
const Identifier AnalysisTypes::RMS("RMS");
const Identifier AnalysisTypes::PeakEnergy("PeakEnergy");
const Identifier AnalysisTypes::SpectralCentroid("SpectralCentroid");
const Identifier AnalysisTypes::ZeroCrossingRate("ZeroCrossingRate");
const Identifier AnalysisTypes::SpectralDifference("SpectralDifference");
const Identifier AnalysisTypes::StandardDeviation("StandardDeviation");
const Identifier AnalysisTypes::FFT("FFT");

// Analysis Properties
const Identifier AnalysisProperties::send("Send");
const Identifier AnalysisProperties::plot("Plot");
const Identifier AnalysisProperties::name("Name");
const Identifier AnalysisProperties::FFT::numSamplesToSend("NumSamplesToSend");

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
void AnalysisModel::addNewAnalysis(ValueTree analysisTree, Identifier analysisId, String name)
{
    ValueTree node(analysisId);
    

    
    node.setProperty(AnalysisProperties::send, 0, nullptr);
    node.setProperty(AnalysisProperties::plot, 0, nullptr);
    node.setProperty(AnalysisProperties::name, name, nullptr);
    
    

    // extra properties for FFT
    if (analysisId == AnalysisTypes::FFT)
    {
        node.setProperty(AnalysisProperties::FFT::numSamplesToSend, 512, nullptr);
    }
  
    analysisTree.addChild(node, -1, nullptr);
}

//==============================================================================
void AnalysisModel::turnOffAllPlotting(ValueTree analysisTree)
{
    ValueTree mainTree = analysisTree.getParent();
    
    for (int i = 0;i < mainTree.getNumChildren();i++)
    {
        mainTree.getChild(i).setProperty(AnalysisProperties::plot, 0, nullptr);
    }
}

//==============================================================================
void AnalysisModel::removeAnalysis(ValueTree analysisTree)
{
    ValueTree mainTree = analysisTree.getParent();
    
    mainTree.removeChild(analysisTree, nullptr);
}



