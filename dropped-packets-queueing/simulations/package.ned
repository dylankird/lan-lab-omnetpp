package dropped_packets_queueing.simulations;

import inet.queueing.queue.DropTailQueue;
import inet.queueing.sink.ActivePacketSink;
import inet.queueing.source.ActivePacketSource;


@license(LGPL);

network DropTailQueueTutorialStep
{
    @display("bgb=700,200");
    submodules:
        producer: ActivePacketSource {
            @display("p=100,100");
        }
        queue: DropTailQueue {
            @display("p=325,100");
        }
        collector: ActivePacketSink {
            @display("p=550,100");
        }
    connections allowunconnected:
        producer.out --> queue.in;
        queue.out --> collector.in;
}
