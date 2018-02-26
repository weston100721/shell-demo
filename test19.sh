#!/bin/bash

SCRIPT_NAME=`basename "$0"`
RELATIVE_WORK_DIR=$(dirname $0)
cd $RELATIVE_WORK_DIR
WORK_DIR=$(pwd -P)

echo "the $SCRIPT_NAME is under the $WORK_DIR"