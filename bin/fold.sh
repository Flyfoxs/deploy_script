#!/bin/bash
cd "$(dirname "$0")"

cd ..

mkdir -p log

#for fold in 4 3 2 1 0 :
for fold in {0..5}
do
  python -u core/train_lgb.py train -1 $fold >> log/lgb_m_$fold.log 2>&1
done

#CUDA_VISIBLE_DEVICES=3  &&   python train.py --config resources/train_config_ce.yaml



