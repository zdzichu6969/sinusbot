#!/bin/bash
docker run --restart=always -d -P \
        --name $1 \
        -p $2:8087 \
        ts3soundboard098
