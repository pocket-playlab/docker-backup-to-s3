#!/bin/bash

ETCD_DIR=/home/core/etcd

rm -rf $ETCD_DIR
mkdir $ETCD_DIR

for z in $(etcdctl ls / --recursive );
do
echo -n "etcdctl get ${z} "
etcdctl get $z
done > $ETCD_DIR/etcdctl-backup-`uname -n`
