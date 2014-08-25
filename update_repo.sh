#!/bin/sh

ARG_MAX=`getconf ARG_MAX`
TARGET=${PWD}/.filez

(cd .filez; find -mindepth 1 -print0) | (cd ~; xargs -0 -s ${ARG_MAX} cp --parents {} ${TARGET})

