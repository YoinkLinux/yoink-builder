#!/bin/bash

# Author: gavinpease AT gmail DOT com
# Program: buildpkg
# Description:
# 	Builds and compiles a package from information given in a INSTALL file.

COLOR_ERR=$(tput setaf 196)
COLOR_WARN=$(tput setaf 166)
COLOR_OK=$(tput setaf 155)
COLOR_INFO=$(tput setaf 249)
function error(){
	echo ${COLOR_ERR} $@;
}
function warn(){
	echo ${COLOR_WARN} $@;
}
function ok(){
	echo ${COLOR_OK} $@;
}
function log(){
	echo ${COLOR_INFO} $@;
}

[[ ! -f $PWD/INSTALL ]] && error "INSTALL not found!" && exit 1
