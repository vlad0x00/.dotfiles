#!/bin/bash

for dotfile in $(find files -mindepth 1 -maxdepth 1); do
    rm -rf ~/$dotfile
    ln -sf $(pwd)/$dotfile ~/
done
