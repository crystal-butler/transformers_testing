#!/bin/bash

export TRAIN_FILE=wikitext-2-raw/wiki.train.raw
export TEST_FILE=wikitext-2-raw/wiki.test.raw

python run_language_modeling.py \
	--per_gpu_train_batch_size=4 \
	--save_total_limit=10 \
	--output_dir=output \
	--model_type=roberta \
	--model_name_or_path=roberta-base \
	--do_train \
	--train_data_file=$TRAIN_FILE \
	--do_eval \
	--eval_data_file=$TEST_FILE \
	--mlm
