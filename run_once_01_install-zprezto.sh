#!/bin/bash

set -e

echo "Remove ${ZDOTDIR:-$HOME}/.zprezto if exists"
rm -rf "${ZDOTDIR:-$HOME}/.zprezto"

echo "Cloning zprezto repo with submodules"
git clone \
    -q \
    --depth 1 \
    --shallow-submodules \
    --recursive https://github.com/sorin-ionescu/prezto.git \
    "${ZDOTDIR:-$HOME}/.zprezto"

# vim: filetype=bash:
