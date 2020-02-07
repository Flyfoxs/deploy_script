#rsync -avz 'felix@10.10.20.103:/home/felix/.*' /home/felix/

rsync -avz 'felix@10.10.20.103:/home/felix/.cache/torch/*' /home/felix/.cache/torch
rsync -avz 'felix@10.10.20.103:/home/felix/.torch/*' /home/felix/.torch


# rsync -avz  ./  felix@10.10.20.103:$(pwd)