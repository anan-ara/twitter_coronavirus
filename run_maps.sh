#!/bin/sh

for file in /data-fast/twitter2020/*.zip; do
	./src/map.py --input_path=$file &
done
