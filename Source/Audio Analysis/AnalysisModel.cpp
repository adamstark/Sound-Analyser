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

const Identifier AnalysisTypes::RMS("RMS");
const Identifier AnalysisTypes::PeakEnergy("PeakEnergy");
const Identifier AnalysisTypes::SpectralCentroid("SpectralCentroid");
const Identifier AnalysisTypes::ZeroCrossingRate("ZeroCrossingRate");
const Identifier AnalysisTypes::SpectralDifference("SpectralDifference");

const Identifier AnalysisProperties::send("Send");
const Identifier AnalysisProperties::plot("Plot");

AnalysisModel::AnalysisModel()
{
    
}




String AnalysisModel::getAnalysisName(Identifier analysisType)
{
    
    if (analysisType == AnalysisTypes::RMS)
    {
        return "Root Mean Square (RMS)";
    }
    else if (analysisType == AnalysisTypes::PeakEnergy)
    {
        return "Peak Energy";
    }
    else if (analysisType == AnalysisTypes::SpectralCentroid)
    {
        return "Spectral Centroid";
    }
    else if (analysisType == AnalysisTypes::ZeroCrossingRate)
    {
        return "Zero Crossing Rate";
    }
    else if (analysisType == AnalysisTypes::SpectralDifference)
    {
        return "Spectral Difference";
    }
    else
    {
        return "Name Error";
    }
}

void AnalysisModel::addNewAnalysis(ValueTree analysisTree, int analysisId)
{
    if (analysisId == AnalysisIds::RMS)
    {
        ValueTree node(AnalysisTypes::RMS);
        node.setProperty(AnalysisProperties::send, 0, nullptr);
        node.setProperty(AnalysisProperties::plot, 0, nullptr);
        analysisTree.addChild(node, -1, nullptr);
    }
    else if (analysisId == AnalysisIds::PeakEnergy)
    {
        ValueTree node(AnalysisTypes::PeakEnergy);
        node.setProperty(AnalysisProperties::send, 0, nullptr);
        node.setProperty(AnalysisProperties::plot, 0, nullptr);
        analysisTree.addChild(node, -1, nullptr);
    }
    else if (analysisId == AnalysisIds::SpectralCentroid)
    {
        ValueTree node(AnalysisTypes::SpectralCentroid);
        node.setProperty(AnalysisProperties::send, 0, nullptr);
        node.setProperty(AnalysisProperties::plot, 0, nullptr);
        analysisTree.addChild(node, -1, nullptr);
    }
    else if (analysisId == AnalysisIds::ZeroCrossingRate)
    {
        ValueTree node(AnalysisTypes::ZeroCrossingRate);
        node.setProperty(AnalysisProperties::send, 0, nullptr);
        node.setProperty(AnalysisProperties::plot, 0, nullptr);
        analysisTree.addChild(node, -1, nullptr);
    }
    else if (analysisId == AnalysisIds::SpectralDifference)
    {
        ValueTree node(AnalysisTypes::SpectralDifference);
        node.setProperty(AnalysisProperties::send, 0, nullptr);
        node.setProperty(AnalysisProperties::plot, 0, nullptr);
        analysisTree.addChild(node, -1, nullptr);
    }


}

StringArray AnalysisModel::getAllAnalysisNames()
{
    StringArray nameList;
    
    nameList.add(getAnalysisName(AnalysisTypes::RMS));
    nameList.add(getAnalysisName(AnalysisTypes::PeakEnergy));
    nameList.add(getAnalysisName(AnalysisTypes::SpectralCentroid));
    nameList.add(getAnalysisName(AnalysisTypes::ZeroCrossingRate));
    nameList.add(getAnalysisName(AnalysisTypes::SpectralDifference));
    
    return nameList;
}