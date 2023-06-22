#!/bin/bash
# display all HTTP methods the server will accept using curl.
curl -s -I "$1" | grep -i '^Allow:' | cut -d' ' -f2-
