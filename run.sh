#!/bin/bash

re='^[0-9]+$'

if [[ $# -eq 1 && $1 =~ $re ]]; then
    gdb --eval-command "target remote $(netstat -rn | grep ^0.0.0.0 | awk '{print $2}'):$1"
    exit $?
fi

#if [[ $# -gt 1 && $1 == 'server' ]]; then
#    gdbserver 0.0.0.0:4242 ...
#    exit $?
#fi

gdb $@
