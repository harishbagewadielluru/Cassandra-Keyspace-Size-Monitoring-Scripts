#!/bin/bash
while read month
do
while read day
do
./script_to_total_size.sh keyspaces $month$day $month$day_total
done < $1
done < $2
