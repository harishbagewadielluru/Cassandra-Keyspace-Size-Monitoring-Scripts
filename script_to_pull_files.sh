#! /bin/bash

while read month
do
while read day
do
while read port
do
`scp -i <rsa_key> -P $port <user>@<ip>:"/var/log/keyspace_size-$month\ $day.log" keyspace_size-$month$day-$port.log`
done < $1
done < $2
done < $3
