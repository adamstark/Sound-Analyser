
#include "OSCSender.h"


//==============================================================================
OSCSender::OSCSender() : transmitSocket( IpEndpointName( ADDRESS, PORT ) )
{
    
}

//==============================================================================
void OSCSender::send(const char* address_pattern,float value)
{
    char buffer[OUTPUT_BUFFER_SIZE];
    osc::OutboundPacketStream p( buffer, OUTPUT_BUFFER_SIZE );
    
    p << osc::BeginBundleImmediate
    << osc::BeginMessage(address_pattern) << value << osc::EndMessage
    << osc::EndBundle;
    
    transmitSocket.Send( p.Data(), p.Size() );
}

//==============================================================================
void OSCSender::send(const char* address_pattern,std::vector<float> values)
{
    char buffer[OUTPUT_BUFFER_SIZE*10];
    osc::OutboundPacketStream p( buffer, OUTPUT_BUFFER_SIZE*10);
    
    p << osc::BeginMessage(address_pattern);
    
    for (int i = 0;i < values.size();i++)
    {
        p << values[i];
    }

    p << osc::EndMessage;
    
    transmitSocket.Send( p.Data(), p.Size() );
}