#!/bin/bash

echo 'Installing Image Resizer library'

echo 'Installing PIL library'

sudo pip install Pillow

chmod 755  image_resizer.py
echo 'Install Done. Opening help.'
echo ''
echo ''
./image_resizer.py -h

