//
//  Analysis.h
//  SoundAnalyser
//
//  Created by Adam Stark on 02/12/2013.
//
//

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
