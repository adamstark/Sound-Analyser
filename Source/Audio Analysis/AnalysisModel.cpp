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
const Identifier AnalysisTypes::StandardDeviation("StandardDeviation");

const Identifier AnalysisProperties::send("Send");
const Identifier AnalysisProperties::plot("Plot");

Array<Identifier> AnalysisModel::analysisList = buildAnalysisList();

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
    else if (analysisType == AnalysisTypes::StandardDeviation)
    {
        return "Standard Deviation";
    }
    else
    {
        return "Name Error";
    }
}

void AnalysisModel::addNewAnalysis(ValueTree analysisTree, int analysisId)
{
    if (analysisId < analysisList.size())
    {
        if (false) // <-- some future special case where we need a different structure
        {
            
        }
        else
        {
            ValueTree node(analysisList[analysisId]);
            node.setProperty(AnalysisProperties::send, 0, nullptr);
            node.setProperty(AnalysisProperties::plot, 0, nullptr);
            analysisTree.addChild(node, -1, nullptr);
        }
    }
    

}

StringArray AnalysisModel::getAllAnalysisNames()
{
    StringArray nameList;

    for (int i = 0;i < analysisList.size();i++)
    {
        nameList.add(getAnalysisName(analysisList[i]));
    }
        
    return nameList;
}