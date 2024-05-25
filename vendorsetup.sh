#!/bin/bash

# CCACHE
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_MAXSIZE="40G"
export CCACHE_DIR="~/.ccache" 
# TWRP OFFICIAL DEPENDENCY TEST
sudo git clone --depth 1 --branch main --single-branch https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8 /opt/toolchains/arm-eabi-4.8/

# Warn if CCACHE_DIR is an invalid directory
if [ ! -d ${CCACHE_DIR} ];
 then
   echo "CCACHE Directory/Partition is not mounted at \"${CCACHE_DIR}\""
   echo "Please edit the CCACHE_DIR build variable or mount the directory."
fi
