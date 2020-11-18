#!/bin/bash

conda_dirname=/home/khoeflich/Course-Data-Science-with-Dask/03_distributed
export conda_base_path=${conda_dirname}/miniconda3

if [ "${1}" == "install" ]; then

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
bash Miniconda3-latest-Linux-x86_64.sh -b -p ${conda_base_path} && \
${conda_base_path}/bin/conda install -c conda-forge --update-deps --yes jupyterlab dask distributed paramiko dask-jobqueue
source ${conda_base_path}/etc/profile.d/conda.sh
conda activate base
pip install asyncssh

else

source ${conda_base_path}/etc/profile.d/conda.sh
conda activate base

fi
