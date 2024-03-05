#!/bin/sh

/chainsaw/chainsaw hunt -j /chainsaw/evtx_files \
    --rule /chainsaw/rules/ \
    --mapping /chainsaw/mapping_files/sigma-mapping.yml \
    --output chainsaw.json
