#!/bin/bash
source .secrets

mkdir -p $APP_PATH

./available.sh > $APP_PATH/log 2> /dev/null

./parse_scripts.sh $APP_PATH > $APP_PATH/final
