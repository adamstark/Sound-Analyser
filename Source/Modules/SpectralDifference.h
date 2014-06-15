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
    SpectralDifference(int frameSize) : spectralDifferenceOutputValue(0.0), odf(frameSize)
    {

    }
    
    //==============================================================================
    String getName()
    {
        return "Spectral Difference";
    }
        
    //==============================================================================
    void performAnalysis(std::vector<float> magnitudeSpectrum)
    {
        spectralDifferenceOutputValue = odf.spectralDifference(magnitudeSpectrum);
    }
    
    //==============================================================================
    float getAnalysisResultAsFloat()
    {
        return spectralDifferenceOutputValue;
    }
    
    //==============================================================================
    std::string getCoreAddressPattern()
    {
        return "/spectralDifference";
    }
    
    //==============================================================================
    Identifier getIdentifier()
    {
        return Identifier("SpectralDifference");
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
    
    float spectralDifferenceOutputValue;
    OnsetDetectionFunction<float> odf;

};

#endif
