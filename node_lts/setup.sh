#!/bin/sh

nodebrew install-binary stable && true
echo "node version: $(nodebrew use stable)"
echo "npm version: $(npm -v)"
