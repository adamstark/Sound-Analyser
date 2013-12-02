

#ifndef OSCSENDER_H
#define OSCSENDER_H

#include <iostream>
#include <vector>
#include <string>
#include "OscOutboundPacketStream.h"
#include "UdpSocket.h"

#define ADDRESS "127.0.0.1"
#define PORT 7000

#define OUTPUT_BUFFER_SIZE 1024

class OSCSender {
    
public:
    
    /** constructor */
    OSCSender();
    
    UdpTransmitSocket transmitSocket;
    
    void send(const char* address_pattern,float value);
    
    void send(const char* address_pattern,std::vector<float> values);
    

private:
            
};

#endif