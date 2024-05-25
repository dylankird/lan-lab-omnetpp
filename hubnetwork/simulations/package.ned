package hubnetwork.simulations;

import inet.node.ethernet.EthernetHost;
import inet.node.ethernet.EthernetHub;
import inet.node.inet.Router;


@license(LGPL);

//
// TODO documentation
//
network Network
{
    @display("bgb=472,542");
    submodules:
        ethernetHost: EthernetHost {
            @display("p=99,40");
        }
        ethernetHost1: EthernetHost {
            @display("p=301,51");
        }
        ethernetHost2: EthernetHost {
            @display("p=161,479");
        }
        ethernetHost3: EthernetHost {
            @display("p=340,484");
        }
        ethernetHub: EthernetHub {
            @display("p=210,130");
        }
        ethernetHub1: EthernetHub {
            @display("p=210,377");
        }
        router: Router {
            @display("p=216,264");
        }
    connections:
        ethernetHost.ethg <--> {  delay = 0.1us; datarate = 100Mbps; } <--> ethernetHub.ethg++;
        ethernetHub.ethg++ <--> {  delay = 0.1us; datarate = 100Mbps; } <--> ethernetHost1.ethg;
        ethernetHub1.ethg++ <--> {  delay = 0.1us; datarate = 100Mbps; } <--> ethernetHost2.ethg;
        ethernetHub1.ethg++ <--> {  delay = 0.1us; datarate = 100Mbps; } <--> ethernetHost3.ethg;
        ethernetHub.ethg++ <--> {  delay = 0.1us; datarate = 100Mbps; } <--> router.ethg[0];
        ethernetHub1.ethg++ <--> {  delay = 0.1us; datarate = 100Mbps; } <--> router.ethg[0];
}

