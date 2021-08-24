#!/bin/bash
set -x
set -o pipefail

SQLMAP_COMMAND="python3 sqlmap-dev/sqlmap.py -u $TARGET \
--batch \
--forms \
--risk=$SQLMAP_RISK \
--level=$SQLMAP_LEVEL \
--random-agent \
--all \
--dbs \
--output-dir=/reports"

if [ ! "$SQLMAP_COOKIE" = "" ]
then
  SQLMAP_COMMAND="${SQLMAP_COMMAND} --cookie $SQLMAP_COOKIE"
fi

$SQLMAP_COMMAND
