
#include "OSCSender.h"


//==============================================================================
OSCSender::OSCSender() : transmitSocket( IpEndpointName( ADDRESS, PORT ) )
{
    
}

//==============================================================================
void OSCSender::send(char* address_pattern,float value)
{
    char buffer[OUTPUT_BUFFER_SIZE];
    osc::OutboundPacketStream p( buffer, OUTPUT_BUFFER_SIZE );
    
    p << osc::BeginBundleImmediate
    << osc::BeginMessage(address_pattern) << value << osc::EndMessage
    << osc::EndBundle;
    
    transmitSocket.Send( p.Data(), p.Size() );
}