Cassandra-Keyspace-Size-Monitoring-Scripts
==========================================
The following scripts will help you to monitor the growth of keyspaces in a multi-node cassandra cluster

To do this you have to pull the files from all the nodes to a centralized machine or a monitoring node:
script_to_pull_files.sh will help you to achieve this if run from a monitoring node

script_to_create_files_by_day.sh will help you to create files needed to calculate the size by the next script

script_to_total_size.sh will calculate the size per keyspace per day considering the whole cluster

script_to_total_all.sh will calculate the size considering all the keyspaces for each day to the range of the days specified in the days and month files
