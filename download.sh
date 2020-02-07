#!/usr/bin/env bash

cd "$(dirname "$0")"
cd ..

conf_path="$(dirname "$0")"
remote_dir="~/$(basename "$(pwd)")/"


if [[ "$1" == "amax7" ]] || [[ "$1" == "iiat7" ]] ; then
  remote_host="felix@$1"
  remote_dir="/share/felix/pj/$(basename "$(pwd)")"
else
  remote_host="felix@$1"
fi


echo remote_dir=${remote_dir}

if [[ -z "$2" ]]; then
    #rsync -avz --exclude-from "${conf_path}/exclude.txt" --max-size=1m  $remote_host:$remote_dir  ./
    echo rsync -avz  $remote_host:$remote_dir/notebook/*.ipynb  ./notebook/
    rsync -avz  $remote_host:$remote_dir/notebook/*.ipynb  ./notebook/

    rsync -avz  $remote_host:$remote_dir/output/*.csv  ./output

else
    rsync -avz  $remote_host:$remote_dir/$2/*.*  ./$2/
fi

date

echo 'download from:' $remote_host:$remote_dir



