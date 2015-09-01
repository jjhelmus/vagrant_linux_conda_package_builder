Building Linux conda packages with a Vagrant VM
===============================================

This repository contains tools for building x86-64 Linux conda packages
using a CentOS 5 Virtual machine created and provisioned using vagrant.  

To use:

   * Download the latest Linux x86-64 
     [Miniconda installer](http://conda.pydata.org/miniconda.html) and place
     this file in a directory named *vendor*.
   * Install [vagrant](https://www.vagrantup.com/) if not already installed.
   * Start the VM using `vagrant up`.  This creates the VM, installs
     miniconda and the conda build package.  
   * Use `vagrant ssh` to ssh into the VM from which Linux conda packages 
     can be build and uploaded to anaconda.org/binstar.org.  

It is recommended that the recipes for the conda packages which are to be 
build be placed in a directory names **recipes**. In the VM this directory 
can be acces in the /vagrant/recipes directory.

If X11 forwarding is needed install xauth, logout and log-back in::
    
    sudo yum install xorg-xauth xorg-x11-xauth xeyes
    logout
    vagrant -XY ssh

A 32-bit version of the CentOS VM is available in the 32_bit branch

If used to build TRMM RSL make sure flex is install before running `conda
build`.  `sudo yum install flex` will do the trick
