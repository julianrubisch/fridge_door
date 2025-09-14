#!/bin/bash
gem install overmind
gem install rails-mcp-server
npm i -g prettier

if [ -S .overmind.sock ]; then
    rm .overmind.sock
fi

bin/setup --skip-server
