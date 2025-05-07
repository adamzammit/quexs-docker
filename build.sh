#!/bin/bash

#Fail on any error
set -e
sysctl -w kernel.randomize_va_space=0
docker buildx build --pull --no-cache --push --platform linux/amd64,linux/arm64,linux/ppc64le,linux/arm/v7,linux/arm/v6,linux/s390x -t acspri/quexs:2.5.1 -t acspri/quexs:latest -t acspri/quexs:remotelime -t adamzammit/quexs:2.5.1 -t adamzammit/quexs:latest -t adamzammit/quexs:remotelime .
sysctl -w kernel.randomize_va_space=2
