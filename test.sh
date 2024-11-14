#!/bin/zsh

function setup() {
    rm -rf res.txt
}

function local_job() {
    sleep 3
    : > res.txt
}


setup
local_job &
./ywait $! && test -f res.txt || { echo "failed: ywait could not wait process" >&2 ; }

setup
local_job &
if ./ywait -t 1 $!; then
  test -f res.txt && { echo "failed: ywait timeout is not working" >&2 ; }
fi
