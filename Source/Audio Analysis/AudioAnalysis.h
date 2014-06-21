//=======================================================================
/** @file AudioAnalysis.h
 *  @brief The base class for all audio analysis modules
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

#ifndef __SoundAnalyser__Analysis__
#define __SoundAnalyser__Analysis__

#include <vector>
#include <string>
#include "AnalysisModel.h"
#include "../GUI/SimpleAnalysisComponent.h"
#include "../Libraries/Gist/src/Gist.h"

enum InputType
{
    AudioBufferInput,
    MagnitudeSpectrumInput
};

enum OutputType
{
    FloatOutput,
    VectorOutput
};

class AudioAnalysis
{
public:
    AudioAnalysis()
    {
        plot = false;
        send = false;
        addressPattern = "/uninitialised";
    }
    
    virtual ~AudioAnalysis()
    {
        
    }
    
    //==============================================================================
    virtual InputType getInputType() = 0;
    
    virtual OutputType getOutputType() = 0;
    
    virtual Identifier getIdentifier() = 0;
    
    virtual Identifier getCollectionIdentifier() = 0;
    
    virtual String getCollectionName() = 0;
    
    virtual String getName() = 0;
    
    virtual String getAuthorString() = 0;
    
    virtual String getTechnicalDescription() = 0;
    
    virtual String getSimpleDescription() = 0;
    
    virtual std::string getCoreAddressPattern() = 0;
    
    virtual void performAnalysis(std::vector<float> buffer) = 0;
    
    //==============================================================================
    virtual float getAnalysisResultAsFloat()
    {
        return 0;
    }
    
    virtual std::vector<float> getAnalysisResultAsVector()
    {
        std::vector<float> v;
        
        return v;
    }

    virtual bool resultReady()
    {
        return true;
    }
    
    virtual void setSamplingFrequency(int fs)
    {
        
    }
    
    virtual void setInputAudioFrameSize(int frameSize)
    {
        
    }
    
    //==============================================================================
    // override this if you have extra parameters for
    // the analysis algorithm you are developing as you
    // will need to initialise them in the ValueTree
    virtual void initialise(ValueTree &analysisTree)
    {        
        send = analysisTree[AnalysisProperties::send];
        plot = analysisTree[AnalysisProperties::plot];
    }
    
    virtual void handleCustomPropertyChange(ValueTree& tree, const Identifier& property)
    {
        
    }
    
    virtual Component* getGUIComponent(ValueTree& analysisTree)
    {
        return new SimpleAnalysisComponent(analysisTree);
    }
    
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    
    virtual ValueTree createAnalysisTree()
    {
        ValueTree tree(getIdentifier());
    
        tree.setProperty(AnalysisProperties::send, 0, nullptr);
        tree.setProperty(AnalysisProperties::plot, 0, nullptr);
        tree.setProperty(AnalysisProperties::name, getName(), nullptr);
                 
        return tree;
    }
         
    bool plot;
    bool send;
    std::string addressPattern;

    
};

#endif /* defined(__SoundAnalyser__Analysis__) */
