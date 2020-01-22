#!/usr/bin/env bash
cd "$(dirname "$0")"

conf_path="$(dirname "$0")"

remote_dir="~/"
if [[ -z "$1" ]]; then
  remote_host="felix@iiat7"
  remote_dir="/share/felix/pj"
else
  remote_host="felix@$1"
fi
#


cd ..

if [[ -z "$2" ]]; then
    echo rsync -avz --no-links --exclude-from "${conf_path}/exclude.txt" $(pwd) $remote_host:$remote_dir
    rsync -avz --no-links --exclude-from "${conf_path}/exclude.txt" $(pwd) $remote_host:$remote_dir
else
    #rsync -avz --no-links $(pwd) $remote_host:$remote_dir
    echo 'cancel'
fi

date

echo 'upload to:' $remote_host:$remote_dir
echo '===================================='

#rsync -av  ./output/0.70180553000.csv hdpsbp@ai-prd-07:/users/hdpsbp/felix/df_jf/output/


#rsync -av hdpsbp@ai-prd-04:/users/hdpsbp/felix/kdd_bd   /apps/


#rsync -av  ./input/tmp hdpsbp@ai-prd-07:/users/hdpsbp/felix/kdd_bd/input

#rsync -av   ./output/sub/?.csv hdpsbp@ai-prd-07:/users/hdpsbp/felix/kdd_bd/output/sub
