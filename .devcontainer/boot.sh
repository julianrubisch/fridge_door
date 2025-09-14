#!/bin/bash

if [ -S .overmind.sock ]; then
    rm .overmind.sock
fi

bin/setup --skip-server
