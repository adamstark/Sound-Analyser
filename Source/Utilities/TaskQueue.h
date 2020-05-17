//=======================================================================
/** @file TaskQueue.h
 *  @author Adam Stark
 *  @copyright Copyright (C) Adam Stark
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

#ifndef TaskQueue_h
#define TaskQueue_h

#include "../JuceLibraryCode/JuceHeader.h"

#define QUEUE_SIZE 2048

class TaskQueue
{
public:
    
    TaskQueue()  : abstractFifo (QUEUE_SIZE)
    {
    }
    
    void addTask (std::function<void()> task)
    {
        int start1, size1, start2, size2;
        abstractFifo.prepareToWrite (1, start1, size1, start2, size2);
        
        if (size1 > 0)
            buffer[start1] = std::make_unique<std::function<void()>> (std::move (task))  ;
        
        abstractFifo.finishedWrite (size1 + size2);
    }
    
    std::unique_ptr<std::function<void()>> getNextTask()
    {
        int start1, size1, start2, size2;
        abstractFifo.prepareToRead (1, start1, size1, start2, size2);
        
        std::unique_ptr<std::function<void()>> task;

        if (size1 > 0)
            task = std::move (buffer[start1]);
        
        abstractFifo.finishedRead (size1 + size2);
        
        return task;
    }
    
    void runNextTask()
    {
        if (auto task = getNextTask())
            (*task)();
    }
    
    int getNumberOfTasks() const
    {
        return abstractFifo.getNumReady();
    }
    
    bool isEmpty()
    {
        return abstractFifo.getNumReady() == 0;
    }
    
private:
    AbstractFifo abstractFifo;
    std::unique_ptr<std::function<void()>> buffer [QUEUE_SIZE];
};


#endif /* TaskQueue_h */
