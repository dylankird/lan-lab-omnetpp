#include "computer.h"

Define_Module(Computer);

void Computer::initialize()
{
    cMessage *information = new cMessage();
    send(information, "port$o");
}

void Computer::handleMessage(cMessage *msg)
{
    EV << "Message Received";
    cMessage *answer = new cMessage();
    sendDelayed(answer, unif
