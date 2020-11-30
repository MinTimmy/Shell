#!/bin/bash

# pat=timmy
# cmd="ps -ef"

# $cmd | grep $pat


pat=${1-timmy}
cmd="ps -ef"

$cmd | grep $pat
