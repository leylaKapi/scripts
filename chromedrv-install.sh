#!/bin/bash

# Usage: ./chromedrv-install.sh <VERSION>

####
# Description: Installs specified ChromeDriver version and caches the installation for future use
#
# Runs on: all Semaphore platforms
#
# Usage:
#
#    wget https://raw.githubusercontent.com/renderedtext/semaphore-scripts/master/chromedrv-install.sh && source chromedrv-install.sh <version>
#
# For example, the following command will install ChromeDriver 2.46 and cache its install archive on Semaphore
#
#    wget https://raw.githubusercontent.com/renderedtext/semaphore-scripts/master/chromedrv-install.sh && source chromedrv-install.sh 2.46
#
# Note: 
####

set -e

DRV_VER=${1:-'2.46'}
#DRV_ARCHIVE=

wget https://chromedriver.storage.googleapis.com/$DRV_VER/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/
sudo chown semaphore:semaphore /usr/local/bin/chromedriver
chromedriver -v
