#!/usr/bin/env bash


cur_fold=.torch

if [[ -L "/home/felix/${cur_fold}" ]] ;
then
    echo "$cur_fold is a symlink to a directory"
else
    mkdir -p /share/felix/${cur_fold}
    cp -r  ~/${cur_fold}/* /share/felix/${cur_fold}/
    mv ~/${cur_fold} ~/${cur_fold}_bk
    ln -s /share/felix/${cur_fold} ~/${cur_fold}
fi
