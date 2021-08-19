#!/bin/bash

if [ -e $OPENLANE_ROOT ]; then
export OPENLANE_ROOT=`pwd`
fi

if [ -e $PDK_ROOT ]; then
export PDK_ROOT=/usr/share/pdk
fi

go_docker(){
 newgrp docker
}

