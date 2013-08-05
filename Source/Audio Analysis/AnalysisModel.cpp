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

const Identifier AnalysisModel::AnalysisTypes::RMS("Root Mean Square (RMS)");
const Identifier AnalysisModel::AnalysisTypes::PeakEnergy("PeakEnergy");
const Identifier AnalysisModel::AnalysisTypes::SpectralCentroid("Spectral Centroid");

const Identifier AnalysisModel::AnalysisProperties::send("Send");
const Identifier AnalysisModel::AnalysisProperties::plot("Plot");

AnalysisModel::AnalysisModel()
{
    
}


String AnalysisModel::getAnalysisName(int analysisID)
{
    
    switch (analysisID) {
        case RMS:
            return "Root Mean Square (RMS)";
            break;
        case PeakEnergy:
            return "Peak Energy";
            break;
        case SpectralCentroid:
            return "Spectral Centroid";
            break;
        default:
            return "ERROR";
            break;
    }
}

void AnalysisModel::addNewAnalysis(ValueTree analysisTree, int analysisID)
{
    switch (analysisID) {
        case RMS:
        {
            ValueTree node(AnalysisTypes::RMS);
            node.setProperty(AnalysisProperties::send, 0, nullptr);
            node.setProperty(AnalysisProperties::plot, 0, nullptr);
            analysisTree.addChild(node, -1, nullptr);
            break;
        }
            
        case PeakEnergy:
        {
            ValueTree node(AnalysisTypes::PeakEnergy);
            node.setProperty(AnalysisProperties::send, 0, nullptr);
            node.setProperty(AnalysisProperties::plot, 0, nullptr);
            analysisTree.addChild(node, -1, nullptr);
            break;
        }
            
        default:
            break;
    }
}