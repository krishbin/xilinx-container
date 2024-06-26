# boxkit

## Description

This is container intended to run Xilinx Vivado Suite of programs on a Linux host. It has inspiration from the [boxkit](https://github.com/ublue-os/boxkit) container.

The container is based on Ubuntu 20.04 because of petalinux support.

## How to use

### Create Box

If you use distrobox:

    distrobox create -i ghcr.io/krishbin/xilinx-container -n xilinx
    distrobox enter xilinx

If you use toolbx:

    toolbox create -i ghcr.io/krishbin/xilinx-container -c xilinx
    toolbox enter xilinx

## Why?

Because running Xilinx Programs is a pain due to required packages.

# Future Work

- [ ] Add ability to auto install Vivado
- [ ] Add ability to auto install Petalinux
