#!/bin/bash

docker build . -t koenvdm/pydev

if [[ "$?" -eq 0 ]]; then
    docker push koenvdm/pydev
fi