//
//  Osc.h
//  Sound Analyser
//
//  Created by Adam Stark on 11/06/2014.
//
//

#ifndef __Sound_Analyser__Osc__
#define __Sound_Analyser__Osc__

#include "../../JuceLibraryCode/JuceHeader.h"
#include <vector>

#define ADDRESS "127.0.0.1"
#define PORT 7000

class Osc
{
    
public:
    
    Osc();
    
    ~Osc();
    
    void sendMessage(std::string address,float v);
    
    void sendMessage(std::string address,std::vector<float> values);

    void connect();
    
    void disconnect();
    
    void setPort(int port);
    
    void setIpAddress(std::string ipAddress);
    
private:
    
    int currentPort;
    std::string currentIP;
    
    ScopedPointer<DatagramSocket> datagramSocket;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(Osc)
};

#endif /* defined(__Sound_Analyser__Osc__) */
