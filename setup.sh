#!/bin/bash

for dotfile in $(find files -mindepth 1 -maxdepth 1); do
    ln -sf $(pwd)/$dotfile ~/
done
