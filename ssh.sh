#!/bin/bash
source .secrets

machine=`head -1 $APP_PATH/final | awk '{print $2}'`

ssh $machine
