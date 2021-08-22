#!/bin/bash
set -x
set -o pipefail

python3 sqlmap-dev/sqlmap.py -u $TARGET \
--batch \
--forms \
--risk=$SQLMAP_RISK \
--level=$SQLMAP_LEVEL \
--random-agent \
--all \
--dbs \
--output-dir=/reports 
