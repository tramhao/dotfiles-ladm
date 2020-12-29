#!/usr/bin/env bash

#ulimit -c unlimited
export MESA_LOADER_DRIVER_OVERRIDE=i965
echo $MESA_LOADER_DRIVER_OVERRIDE
blender 
#--debug-gpu > gpu_debug_log.txt
