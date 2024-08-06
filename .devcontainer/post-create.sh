#!/bin/bash

echo "Downloading RAFT code"
sh setup_raft.sh

echo "Utilities to display PDFs in notebooks"
sudo apt update && \
    sudo apt install -y libmagickwand-dev && \
    sudo sed -i /PDF/d /etc/ImageMagick-6/policy.xml

echo "Upgrading pip"
pip install --upgrade pip

pip install nbdime
nbdime config-git --enable --global

echo "Installing requirements"
pip install -r requirements.txt
