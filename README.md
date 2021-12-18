# build-opticnerve # https://github.com/wirediq/build-opticnerve # By Loren <lharrington@wirediq.com> & Tom <ttijerina@wirediq.com>
# The process is somewhat straightforward and takes approximately 10-20 minutes on a modern quad core CPU with 8 or more gigs of RAM.
# It uses Hashicorp Packer to build an Optic Nerve guest/VM disk image, given a set of build parameters in a config file.

# Getting the source:
git pull https://github.com/wirediq/build-opticnerve # I think its obvious you might have done this already... but..

# Using the source: (Use 'bash -vx ./scriptname.sh' to see what goes on internally)
pushd build-opticnerve
./build.sh # To build the disk image for Optic Nerve
./debug.sh # Launch test VM with the latest disk image
