#!/bin/sh

socat - udp4-listen:49161,reuseaddr,fork | stdbuf -oL cut -d, -f2,3