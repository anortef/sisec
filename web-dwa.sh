#!/bin/bash
set -x
docker run --rm -it -d -p 80:80 vulnerables/web-dvwa
