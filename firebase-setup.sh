#!/bin/sh

# takes $1 as server to deploy to. Run in the repo's directory.

submodules="cookie"

# root module
firebase target:apply hosting hotcorn-gamecdn $1

# submodules
for submodule in $submodules; do
	cd $submodule
	firebase target:apply hosting hotcorn-gamecdn $1
	cd ..
done
