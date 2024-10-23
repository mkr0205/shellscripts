#!/bin/bash

echo "All variables passed to the script: $@"
echo "Number of variables passed to scripts are $#"
echo "the excuted script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "The path of current user: $PATH"
echo "The process id of the present script excution: $$"
sleep 100 &
echo "PID of last background commnd: $!"