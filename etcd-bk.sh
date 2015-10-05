#!/bin/bash
set -e
mkdir /home/core/etcd
for z in $(etcdctl ls / --recursive );
do
echo -n "etcdctl get ${z} "
etcdctl get $z
done > /home/core/etcd/output.sh
