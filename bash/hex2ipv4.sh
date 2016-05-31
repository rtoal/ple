#!/usr/bin/env bash
function hex2dottedquad {
    counter=0
    while [ $counter -le 6 ]; do
        hex=${1:$counter:2}
        let decimal=0x$hex
        ip+=.$decimal
        let counter+=2
    done
    echo ${ip:1:${#ip}}
}

hex2dottedquad $1
