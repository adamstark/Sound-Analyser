

#ifndef OSCSENDER_H
#define OSCSENDER_H

#include <iostream>
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
    
    void send(char* address_pattern,float value);
    
private:
    
};

#endif