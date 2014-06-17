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
    Identifier getCollectionIdentifier()
    {
        return Identifier("Gist");
    }
    
    //==============================================================================
    String getCollectionName()
    {
        return "Gist";
    }
    
    //==============================================================================
    String getAuthorString()
    {
        return "Adam Stark";
    }
    
    //==============================================================================
    String getTechnicalDescription()
    {
        return "The sum of the absolute value of the bin-wise difference between consecutive magnitude spectra";
    }
    
    //==============================================================================
    String getSimpleDescription()
    {
        return "A feature showing peaks whenever there are sharp changes in a sound, e.g. at the start of notes";
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
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SpectralDifference)

};

#endif
