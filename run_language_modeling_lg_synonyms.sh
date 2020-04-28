#!/bin/bash

export TRAIN_FILE=synonyms_sorted_cleaned.txt
export TEST_FILE=wikitext-103-raw/wiki.test.raw

python run_language_modeling.py \
	--per_gpu_train_batch_size=1 \
	--save_total_limit=10 \
	--output_dir=output_synonyms_lg \
	--model_type=roberta \
	--model_name_or_path=roberta-large \
	--num_train_epochs=4 \
	--do_train \
	--train_data_file=$TRAIN_FILE \
	--do_eval \
	--eval_data_file=$TEST_FILE \
	--mlm
