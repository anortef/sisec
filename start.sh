#!/bin/bash

python3 sqlmap-dev/sqlmap.py -u $TARGET \
--batch \
--forms \
--crawl=$SQLMAP_CRAWL \
--risk=$SQLMAP_RISK \
--level=$SQLMAP_LEVEL \
--random-agent \
--all
