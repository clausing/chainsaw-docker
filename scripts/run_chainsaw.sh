#!/bin/sh

/chainsaw/chainsaw hunt -j /chainsaw/evtx_files \
    --rule /chainsaw/sigma_rules/ \
    --mapping /chainsaw/mapping_files/sigma-mapping.yml \
    --output chainsaw.json
