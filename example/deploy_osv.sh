#!/usr/bin/env bash
cd "$(dirname "$0")"

if [[ -z "$1" ]]; then
  port=80
else
  port=$1
fi

work_dir="$(pwd)"
echo $work_dir
work_dir=${work_dir/Ocean-Smart-Viewer\/bin/}
cd $work_dir


if [ -f "Ocean-Smart-Viewer" ]
then
  cd Ocean-Smart-Viewergit
  git pull
else
  git clone -b master  --depth=1  git@github.com:iiat-project/Ocean-Smart-Viewer.git
  cd Ocean-Smart-Viewer
fi

sudo docker build -t osv .
sudo docker run -p $port:80  -d  --rm osv
#sudo docker run -p 80:80  -it  --rm osv