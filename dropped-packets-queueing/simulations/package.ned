package dropped_packets_queueing.simulations;

import inet.queueing.queue.DropTailQueue;
import inet.queueing.sink.ActivePacketSink;
import inet.queueing.source.ActivePacketSource;


@license(LGPL);

network DropTailQueueTutorialStep
{
    @display("bgb=1001,200");
    submodules:
        producer: ActivePacketSource {
            @display("p=147,100");
        }
        queue: DropTailQueue {
            @display("p=520,100");
        }
        collector: ActivePacketSink {
            @display("p=864,100");
        }
    connections allowunconnected:
        producer.out --> queue.in;
        queue.out --> collector.in;
}
