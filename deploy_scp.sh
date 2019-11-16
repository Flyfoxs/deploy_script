#!/usr/bin/env bash
cd "$(dirname "$0")"
cd ..

work_dir="$(basename "$(pwd)")"

remote_server=felix@c23a473940.51mypc.cn
remote_port=15915 #DGX
#remote_port=39121 #Amax

ssh -t -oPort=$remote_port $remote_server "mkdir -p $work_dir"

for fold in core bin; #notebook bin;
do
  echo "~/$work_dir/$fold/*"
  #ssh -t  -oPort=$remote_port  $remote_server  "rm -rf ~/$work_dir/$fold/*"
  scp -r  -oPort=$remote_port   "../$work_dir/$fold"      $remote_server:~/$work_dir/
done

scp  -oPort=$remote_port   ../$work_dir/*.txt    $remote_server:~/$work_dir/
