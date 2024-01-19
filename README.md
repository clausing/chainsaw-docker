# Chainsaw-docker

Run chainsaw in a docker container to allow it to be run without having to install ruby to build the tool. Based loosely on `https://github.com/iver-ics/chainsaw-docker` but will be run on evtx files already in a given directory that will be passed via `-v`

# Usage

This docker image will run `chainsaw hunt` against all EVTX files found in the current directory and write the JSON results out to chainsaw.json in the current directory. Future versions may allow for some some of the other chainsaw options.

`docker run -it --rm -v $(pwd):/data clausing/chainsaw`
