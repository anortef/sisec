#!/bin/bash

function runnmap {
  NMAP_OUTPUT=$(nmap -p 1-65535 172.17.0.1 | grep open | cut -d'/' -f 1)
  for open_port in $NMAP_OUTPUT
  do
    echo $open_port
  done
}
