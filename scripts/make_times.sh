#!/bin/bash

## Jamison Judd
## PSYC 5171 - Fall 2018

## set the list of experimental conditions to iterate over
declare -a expCond=("Letters" "Numbers" "Sentences" "Words")

## loop through the conditions
for j in "${expCond[@]}"
do
	# extract first column of numbers and save to individual files
	cat stimuli.log | grep "$j" | sed -e "s/ .*//" > data/$j.1d
done