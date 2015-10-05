#!/bin/bash

set -e -x

echo "Job started: $(date)"

/usr/local/bin/s3cmd sync "$DATA_PATH" "$S3_PATH" $PARAMS

echo "Job finished: $(date)"
