#!/bin/bash

pat=${1-timmy}

case `uname` in 
    "Linux"|"SunOS") 
        cmd="ps -ef"
        ;;
    *)
        cmd="ps augx"
        ;;
esac

$cmd | grep $pat
