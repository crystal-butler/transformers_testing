#!/bin/bash

export TRAIN_FILE=CC_WET_train_ab
export TEST_FILE=CC_WET_test_ab

python run_language_modeling.py \
	--per_gpu_train_batch_size=4 \
	--save_total_limit=10 \
	--config_name=config_CC-ab.json \
	--output_dir=output_CC-ab \
	--model_type=roberta \
	--model_name_or_path=output_CC-aa \
	--do_train \
	--train_data_file=$TRAIN_FILE \
	--do_eval \
	--eval_data_file=$TEST_FILE \
	--mlm
