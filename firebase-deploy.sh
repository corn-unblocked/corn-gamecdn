#!/bin/sh

submodules="cookie"

# submodules
for submodule in $submodules; do
	cd $submodule
	firebase deploy
	cd ..
done

# root module needs to be deployed last
firebase deploy
