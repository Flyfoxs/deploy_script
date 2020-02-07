for i in {1..5}; do echo $i; done


sudo -i -u user sh -c  'for i in {1..5}; do echo $i; done'


sudo  /bin/bash -c  'for i in {1..5}; do echo $i || continue ; done'


nohup  /bin/bash -c  'for i in {0..3}; do ./retrain.sh $i >> $i.log 2>&1 ; done' &


sudo -i -u user sh -c  'for i in {1..5}; do apt-get install -y nodejs ; done'


nohup  /bin/bash -c  'for i in {0..1}; do yarn install  >> $i.log 2>&1 ; done' &

