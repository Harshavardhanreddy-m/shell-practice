#!/bin/bash

#### Special Variables ####
echo "All args are passed to script: $@"
echo "Numberof vars passed to script: $#"
echo "Script name: $0"
echo "Present directory: $pwd"
echo "who is running: $user"
echo "Home directory of current user: $Home"
echo "PID of this script: $s"
sleep 100 &
echo "PID of recently executed background process: $!"
echo "All args passed to script: $*"