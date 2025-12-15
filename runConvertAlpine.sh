#!/usr/bin/env bash

currentWorkPath=$(pwd)



podman run -it -v $currentWorkPath:/mnt:Z localhost/convertalpine:latest
