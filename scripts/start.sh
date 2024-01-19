#!/bin/sh

# Setup download folder and evtx_folder
mkdir data evtx_files

find data/ -name *.evtx -exec cp {} /chainsaw/evtx_files/ \;

/scripts/run_chainsaw.sh

