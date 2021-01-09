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

# If we are downloading a file, the script will download and extract it automatically. 
# If we are not, we are going to assume we are in the build directory.
function source_install(){
	source $PWD/INSTALL
	version=$name-$major_version.$min_version.$rel_version
	echo $version
	if [[ ! -z $download ]]; then
		get_source
	fi
	config
	build
	build_install
	post_build
}

function cleanup(){
	unset -f config
	unset -f build
	unset -f build_install
	unset -f post_build
}


[[ ! -f $PWD/INSTALL ]] && error "INSTALL not found!" && exit 1
source_install
cleanup
