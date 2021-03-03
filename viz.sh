#!/bin/bash

HASHTAGS=(
    '#코로나바이러스'
    '#コロナウイルス'
    '#冠状病毒'
    '#covid2019'
    '#covid-2019'
    '#covid19'
    '#covid-19'
    '#coronavirus'
    '#corona'
    '#virus'
    '#flu'
    '#sick'
    '#cough'
    '#sneeze'
    '#hospital'
    '#nurse'
    '#doctor'
    )

for HASHTAG in ${HASHTAGS[@]}; do
	./src/visualize.py --input_path=reduced.lang --key=$HASHTAG | head > viz/${HASHTAG}.lang
	./src/visualize.py --input_path=reduced.country --key=$HASHTAG | head > viz/${HASHTAG}.country
done
