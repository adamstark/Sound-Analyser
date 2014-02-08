//
//  SpectralDifference.h
//  SoundAnalyser
//
//  Created by Adam Stark on 03/12/2013.
//
//

#ifndef SoundAnalyser_SpectralDifference_h
#define SoundAnalyser_SpectralDifference_h

class SpectralDifference : public AudioAnalysis
{
public:
    
    //==============================================================================
    SpectralDifference(int frameSize)
    {
        addressPattern = getCoreAddressPattern();
        
        setFrameSize(frameSize);
    }
    
    //==============================================================================
    String getName()
    {
        return "Spectral Difference";
    }
    
    //==============================================================================
    void setFrameSize(int frameSize)
    {
        // because we are interested in the first half of the
        // magnitude spectrum only, we use frameSize/2
        int magSize = frameSize / 2;
        
        prevMagnitudeSpectrum.resize(magSize);
        
        for (int i = 0;i < magSize;i++)
        {
            prevMagnitudeSpectrum[i] = 0.0;
        }
    }
    
    //==============================================================================
    float performAnalysis_f(std::vector<float> magnitudeSpectrum)
    {
        float sum = 0;	// initialise sum to zero
        
        for (int i = 0;i < magnitudeSpectrum.size();i++)
        {
            // calculate difference
            float diff = magnitudeSpectrum[i] - prevMagnitudeSpectrum[i];
            
            // ensure all difference values are positive
            if (diff < 0)
            {
                diff = diff*-1;
            }
            
            // add difference to sum
            sum = sum+diff;
            
            prevMagnitudeSpectrum[i] = magnitudeSpectrum[i];
        }
        
        return sum;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/spectralDifference";
    }
    
    //==============================================================================
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return AnalysisTypes::SpectralDifference;
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
    std::vector<float> prevMagnitudeSpectrum;
};

#endif
