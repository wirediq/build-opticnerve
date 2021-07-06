#!/bin/bash -vx

while true; do
    virsh destroy OpticNerve
    virsh undefine OpticNerve
    rm -rf ubuntu/output*
    ./build.sh
    virt-install --virt-type kvm --name OpticNerve --memory 512 --vcpus 4 --disk ubuntu/output-OpticNerve/OpticNerve,bus=sata --import --os-variant ubuntu18.04 --network bridge:virbr0 --transient
    echo -n '# Press enter to run cycle again..'
    read
done
