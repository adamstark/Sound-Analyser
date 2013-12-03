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
    SpectralDifference(int frameSize)
    {
        addressPattern = getCoreAddressPattern();
        
        setFrameSize(frameSize);
    }
    
    void setFrameSize(int frameSize)
    {
        prevMagnitudeSpectrum.resize(frameSize);
        
        for (int i = 0;i < frameSize;i++)
        {
            prevMagnitudeSpectrum[i] = 0.0;
        }
    }
    
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
    
    std::string getCoreAddressPattern()
    {
        return "/spectralDifference";
    }
    
    void buildAddressPatternFromId(std::string idWithForwardSlash)
    {
        addressPattern = idWithForwardSlash.append(getCoreAddressPattern());
    }
    
    Identifier getIdentifier()
    {
        return AnalysisTypes::SpectralDifference;
    }
    
    OutputType getOutputType()
    {
        return FloatOutput;
    }
    
    AnalysisDomain getDomainOfAnalysis()
    {
        return FREQDOMAIN;
    }
    
private:
    std::vector<float> prevMagnitudeSpectrum;
};

#endif
