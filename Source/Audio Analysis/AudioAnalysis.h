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
#include "Gist/Gist.h"

enum InputType
{
    AudioBufferInput,
    MagnitudeSpectrumInput,
    GistInput
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
    
    virtual String getName() = 0;
    
    virtual std::string getCoreAddressPattern() = 0;
    
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
    
    virtual float performAnalysis_f(Gist<float> *g)
    {
        return 0.0;
    }
    
    virtual std::vector<float> performAnalysis_v(Gist<float> *g)
    {
        std::vector<float> v;
        
        return v;
    }
    
    virtual float performAnalysis_f(std::vector<float> buffer)
    {
        return 0.0;
    }
    
    virtual std::vector<float> performAnalysis_v(std::vector<float> buffer)
    {
        std::vector<float> v;
        
        return v;
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
