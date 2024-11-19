package new.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network new
{
    @display("bgb=410,268");
    submodules:
        server: StandardHost {
            @display("p=54,112");
        }
        client: StandardHost {
            @display("p=314,112");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=175,35");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client.ethg++;
}

