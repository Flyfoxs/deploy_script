#!/usr/bin/env bash

cd "$(dirname "$0")"
cd ..

./bin/deploy.sh $1

remote_host="felix@$1"
remote_dir="~/$(basename "$(pwd)")/"


if [[ -z "$2" ]]; then
    rsync -avz --exclude-from './bin/exclude.txt' --max-size=1m  $remote_host:$remote_dir  ./
elif [ $2 == "sub" ]; then
    rsync -avz  $remote_host:$remote_dir/output/sub/v21*.zip  ./output/sub/
else
    rsync -avz --max-size=500m  $remote_host:$remote_dir  ./
fi

date

echo 'download from:' $remote_host:$remote_dir
