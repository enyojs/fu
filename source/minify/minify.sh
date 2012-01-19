#!/bin/sh
ENYO=../../../enyo
MINIFY=$ENYO/tools/minifier/minify.js

if command -v node >/dev/null 2>&1
then
	node $MINIFY ./package.js -enyo $ENYO -output fu
	mv fu.css ../build
else
	echo "No node executable found!"
	exit 1
fi
