#!/bin/bash
while read keyspace
do
count=0
while read file
do
size=`cat $file | grep $keyspace | awk '{print $1}'`
#echo $size
y=`echo $size | awk '{ print substr( $0, length($0), length($0) ) }'`
#echo $y
#echo $file
#echo $keyspace
while [[ $y != " " ]]; do
case "$y" in
K)
var=`echo $size | sed 's/.\{1\}$//'`
new_size=`echo $var`
break;;
M)
var=`echo $size | sed 's/.\{1\}$//'`
new_size=`echo "$var * 1024" | bc`
break;;
G)
var=`echo $size | sed 's/.\{1\}$//'`
new_size=`echo "$var * 1024 * 1024" | bc`
break;;
esac
done
#echo $new_size
count=`echo "$count + $new_size" | bc`
#echo $count
done < $2
echo "$keyspace $count" >> $3
done < $1
