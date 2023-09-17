package networkobjects.simulations;


import networkobjects.Computer;
 
network ComputerNetwork
{
    submodules:
        Computer_A : Computer;
        Computer_B : Computer;
       
    connections:
    	Computer_A.port <--> Computer_B.port;
}
