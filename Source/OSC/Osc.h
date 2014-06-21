//=======================================================================
/** @file Osc.h
 *  @brief A class for constructing and send OSC messages
 *  @author Adam Stark
 *  @copyright Copyright (C) 2014  Adam Stark
 *
 * This file is part of Sound Analyser.
 *
 * Sound Analyser is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Sound Analyser is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Sound Analyser.  If not, see <http://www.gnu.org/licenses/>.
 */
//=======================================================================

#ifndef __Sound_Analyser__Osc__
#define __Sound_Analyser__Osc__

#include "../../JuceLibraryCode/JuceHeader.h"
#include <vector>

#define ADDRESS "127.0.0.1"
#define PORT 7000

//=======================================================================
/** A class for constructing and sending OSC messages */
class Osc
{
    
public:
    
    /** Constructor */
    Osc();
    
    /** Destructor */
    ~Osc();
    
    /** Send a single float as an OSC message
     * @param address the address pattern 
     * @param value the floating point value to send
     */
    void sendMessage(std::string address,float value);
    
    /** Send a vector of floats as an OSC message
     * @param address the address pattern
     * @param values the vector of floats to send
     */
    void sendMessage(std::string address,std::vector<float> values);

    /** Connect to the current port and IP address */
    void connect();
    
    /** Disconnect from the current port and IP address */
    void disconnect();
    
    /** Set the port to send data to
     * @param port the port number to send data to
     */
    void setPort(int port);
    
    /** Set the IP address to send data to
     * @param ipAddress the IP address to send data to
     */
    void setIpAddress(std::string ipAddress);
    
private:
    
    /** The current port */
    int currentPort;
    
    /** The current IP Address */
    std::string currentIP;
    
    /** A datagram socket to send data on */
    ScopedPointer<DatagramSocket> datagramSocket;
    
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(Osc)
};

#endif /* defined(__Sound_Analyser__Osc__) */
