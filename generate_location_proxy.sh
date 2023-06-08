#!/bin/bash

# Read each line from stdin and iterate over them
while IFS= read -r line; do
    echo "  location $line {"
    echo "    proxy_pass http://java$line;"
    echo "    include proxy.conf;"
    echo "  }"
done