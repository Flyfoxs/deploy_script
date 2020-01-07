#!/bin/bash


DEVICE_ID=0,1,2,3
TTA=4

MODEL_NAMES=(
  model_a_00
  model_a_02
  model_b_00
  model_b_01
  model_b_02
  model_b_03
  model_b_04
  model_b_05
  model_b_06
  model_b_07
  model_b_08
  )


##################################################################################
# inference all models
##################################################################################
for MODEL_NAME in ${MODEL_NAMES[@]}; do
  echo $MODEL_NAME
done