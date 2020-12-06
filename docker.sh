#!/bin/bash

set -e

COMMAND=$1

echo_help() {
    echo "-- command help"
    echo "\tsh $0 network"
    echo "\t\t - create dmgct_network docker network"
}

if [ $# -lt 2 ]; then
    case "$COMMAND" in
        "network")
            echo 'create docker network: '
            docker network create --driver=bridge \
                --subnet=172.23.0.0/24 \
                --gateway=172.23.0.1 \
                dmgct_network
        ;;
        *) echo_help ;;
    esac
fi
