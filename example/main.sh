#!/bin/bash
cd "$(dirname "$0")"

cd ..

mkdir -p log

for meter in -1 #{0..3}
do
  for fold in {0..4}
  do
    python -u core/train_lgb.py train $meter -1 $fold >> log/lgb_m${meter}_f${fold}.log 2>&1
  done
done
#python -u core/train_lgb.py > log/lgb.log 2>&1

#CUDA_VISIBLE_DEVICES=3  &&   python train.py --config resources/train_config_ce.yaml



