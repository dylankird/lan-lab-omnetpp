//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package queueing.simulations;

import ned.DatarateChannel;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


//
// TODO auto-generated type
//
network Network
{
    @display("bgb=878,564");
    submodules:
        source: Source {
            @display("p=204,243");
        }
        sink: Sink {
            @display("p=600,243");
        }
        queue: Queue {
            @display("p=386,243");
        }
    connections:
        source.out --> DatarateChannel {  delay = default(1us); datarate = default(10Mbps); } --> queue.in++;
        queue.out --> DatarateChannel {  delay = default(1us); datarate = default(10Mbps); } --> sink.in++;
}
