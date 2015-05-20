Building Linux conda packages with a Vagrant VM
===============================================

This repository contains tools for building an x86-64 Linux conda package
using a CentOS 5 Virtual machine creating and provisioned using vagrant.  

To use the VM type `vagrant up`, to create the VM and install miniconda and
the conda build package.  Type `vagrant ssh` to ssh into the VM from which 
Linux conda packages can be build and uploaded to binstar.  

It is recommended the recipes for the conda packages which are to be build be
placed in this directory which can be acces in the /vagrant/recipes directory
on the VM.
