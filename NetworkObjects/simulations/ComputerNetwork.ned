package networkobjects.simulations;


import networkobjects.Computer;

network ComputerNetwork
{
    @display("bgb=326,232");
    submodules:
        Computer_A: Computer;
        Computer_B: Computer {

            @display("p=176,130");
        }
    connections:
        Computer_A.port <--> Computer_B.port;
}
