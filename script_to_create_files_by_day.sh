#!/bin/bash

while read month
do
while read day
do
ls -l keyspace_size-$month$day* | awk '{print $9}' > $month$day
done < $1
done < $2
