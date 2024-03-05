#!/bin/sh

/chainsaw/chainsaw hunt --json \
    --rule /chainsaw/rules/ \
    --sigma /chainsaw/sigma/ \
    --mapping /chainsaw/mappings/sigma-event-logs-all.yml \
    --output /data/chainsaw.json \
    /chainsaw/evtx_files
