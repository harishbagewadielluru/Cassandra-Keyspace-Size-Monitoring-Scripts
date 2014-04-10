#!/bin/bash

while read keyspace
do
while read file
do
size=`cat $file | grep $keyspace | awk '{print $2}'`
day=`echo $file | cut -d '_' -f 1`
echo "$keyspace,$day,$size" >> final/total.csv
done < $2
done < $1
