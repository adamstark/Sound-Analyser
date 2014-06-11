//
//  Osc.cpp
//  Sound Analyser
//
//  Created by Adam Stark on 11/06/2014.
//
//

#include "Osc.h"


//==============================================================================
Osc::Osc()
{
    datagramSocket = new DatagramSocket (7500, false);
    
    currentIP = ADDRESS;
    currentPort = PORT;
    
    connect();
}

//==============================================================================
Osc::~Osc()
{
    disconnect();
}

//==============================================================================
void Osc::sendMessage(std::string address,float v)
{
    address += '\0';
    
    while ((address.size() % 4) != 0)
    {
        address += '\0';
    }
    
    address += ',';
    
    address += 'f';
    
    while ((address.size() % 4) != 0)
    {
        address += '\0';
    }
    
    char a[sizeof(float)];
    
    memcpy(a, &v, sizeof(float));
    
    address += a[3];
    address += a[2];
    address += a[1];
    address += a[0];
    
    datagramSocket->write(address.c_str(), address.size());
}

//==============================================================================
void Osc::sendMessage(std::string address,std::vector<float> values)
{
    address += '\0';
    
    while ((address.size() % 4) != 0)
    {
        address += '\0';
    }
    
    address += ',';
    
    // add all type tags
    for (int i = 0;i < values.size();i++)
    {
        address += 'f';
    }
    
    while ((address.size() % 4) != 0)
    {
        address += '\0';
    }
    
    char a[sizeof(float)];
    
    for (int i = 0;i < values.size();i++)
    {
        memcpy(a, &values[i], sizeof(float));
        
        address += a[3];
        address += a[2];
        address += a[1];
        address += a[0];
    }
    
    datagramSocket->write(address.c_str(), address.size());
}

//==============================================================================
void Osc::connect()
{
    
    if(datagramSocket->connect (currentIP.c_str(), currentPort))
    {
        DBG("CONNECTED");
    }
    else
    {
        DBG("NOT CONNECTED");
    }
}

//==============================================================================
void Osc::disconnect()
{
    if (datagramSocket != nullptr && datagramSocket->isConnected())
    {
        datagramSocket->close();
    }
}

//==============================================================================
void Osc::setPort(int port)
{
    currentPort = port;
    
    connect();
}

//==============================================================================
void Osc::setIpAddress(std::string ipAddress)
{
    currentIP = ipAddress;
    
    connect();
}