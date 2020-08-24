#!/bin/bash
set -ex
cd /usr/local/app
SIMULATION_NAME=${SIMULATION_NAME:-example.ExampleSimulation}
exec java ${JAVA_OPTS} -cp bin/Example.jar  io.gatling.app.Gatling -s ${SIMULATION_NAME}
