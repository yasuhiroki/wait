#!/bin/zsh

function setup() {
    rm -rf res.txt
}

function local_job() {
    sleep 2
    : > res.txt
}


setup
local_job &

./ywait $! && test -f res.txt || { echo "failed" >&2 ; }
