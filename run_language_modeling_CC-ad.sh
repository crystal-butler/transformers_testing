#!/bin/bash

export TRAIN_FILE=CC_WET_train_ad
export TEST_FILE=CC_WET_test_ad

python run_language_modeling.py \
	--per_gpu_train_batch_size=4 \
	--save_total_limit=10 \
	--config_name=config_CC-ad.json \
	--output_dir=output_CC-ad \
	--model_type=roberta \
	--model_name_or_path=output_CC-ac \
	--do_train \
	--train_data_file=$TRAIN_FILE \
	--num_train_epochs=3 \
	--do_eval \
	--eval_data_file=$TEST_FILE \
	--mlm
