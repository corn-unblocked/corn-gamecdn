#!/bin/sh

submodules="cookie"

# root module
firebase deploy

# submodules
for submodule in $submodules; do
	cd $submodule
	firebase deploy
	cd ..
done
