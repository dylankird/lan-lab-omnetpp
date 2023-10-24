package queueing_inet_tut.simulations;

import inet.queueing.scheduler.MarkovScheduler;
import inet.queueing.sink.ActivePacketSink;
import inet.queueing.source.PassivePacketSource;
import inet.queueing.source.PassivePacketSource;



@license(LGPL);


network MarkovSchedulerTutorialStep
{
    @display("bgb=600,300");
    submodules:
        provider1: PassivePacketSource {
            @display("p=100,100");
        }
        provider2: PassivePacketSource {
            @display("p=100,200");
        }
        scheduler: MarkovScheduler {
            @display("p=300,100");
        }
        collector: ActivePacketSink {
            @display("p=500,100");
        }
    connections allowunconnected:
        provider1.out --> scheduler.in++;
        provider2.out --> scheduler.in++;
        scheduler.out --> collector.in;
}
