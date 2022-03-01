# build-opticnerve

Build OpticNerve VM disk image from configuration template.

## Getting the source:
`git pull https://github.com/wirediq/build-opticnerve`

### Using the source:
*Use `bash -vx ./scriptname.sh` to see what goes on internally*

`pushd build-opticnerve`

## Run these from the top level build-opticnerve directory

### Build the disk image for Optic Nerve
`./build.sh`

### Launch test VM with the latest disk image
`./debug.sh`
