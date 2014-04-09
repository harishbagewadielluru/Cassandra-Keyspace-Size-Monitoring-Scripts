#! /bin/bash

while read month
do
while read day
do
while read port
do
`scp -i /Users/harishbagewadielluru/harish_cloudwick_com_id_rsa -P $port rightscale@67.192.178.51:"/var/log/keyspace_size-$month\ $day.log" keyspace_size-$month$day-$port.log`
done < $1
done < $2
done < $3
