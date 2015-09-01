#!/usr/bin/env bash
set -x

# install and update Miniconda
cp /vagrant/vendor/Miniconda-latest-Linux-x86.sh .
chmod +x Miniconda-latest-Linux-x86.sh
./Miniconda-latest-Linux-x86.sh -b
export PATH=/home/vagrant/miniconda/bin:$PATH
echo "export PATH=/home/vagrant/miniconda/bin:\$PATH " >> ~/.bashrc;
conda update --yes conda
conda install --yes conda-build jinja2
