#!/usr/bin/env bash

cd "$(dirname "$0")"
cd ..

conf_path="$(dirname "$0")"
remote_dir="~/$(basename "$(pwd)")/"

remote_dir="~/"
if [[ -z "$1" ]]; then
  remote_host="felix@iiat7"
  remote_dir="/share/felix/pj/$(basename "$(pwd)")/"
else
  remote_host="felix@$1"
fi

echo "${conf_path}/exclude.txt"

mkdir output

if [[ -z "$2" ]]; then
    #rsync -avz --exclude-from "${conf_path}/exclude.txt" --max-size=1m  $remote_host:$remote_dir  ./

    rsync -avz  $remote_host:$remote_dir/notebook/*.ipynb  ./notebook/

    rsync -avz  $remote_host:$remote_dir/output/*.csv  ./output

elif [ $2 == "sub" ]; then
    rsync -avz  $remote_host:$remote_dir/output/sub/v21*.zip  ./output/sub/
else
    rsync -avz --max-size=500m  $remote_host:$remote_dir  ./
fi

date

echo 'download from:' $remote_host:$remote_dir



