package ethernetwork.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network EtherNetwork
{
    @display("bgb=402,266");
    submodules:
        server: StandardHost {
            @display("p=61,101");
        }
        client: StandardHost {
            @display("p=291,146");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=200,32");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client.ethg++;
}

