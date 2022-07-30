#!/usr/bin/env bash
function help() {
	echo "Container for building/servering a pelican Web site"
	echo ""
	echo "Usage:"
	echo "   html                           (re)generate the web site"
	echo "   publish                        generate using production settings"
	echo "   server [PORT=8000]             serve and regenerate together"
	echo ""
	echo "Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html"
	echo "Set the RELATIVE variable to 1 to enable relative urls"
	echo ""
    exit $1
}

function err() {
    >&2 echo "$2"
    exit $1
}

if [ $# == 0 ]; then
    help 1
fi

case $1 in
    html)
        make html
        ;;
    publish)
        make publish
        ;;
    server)
        make devserver $2
        ;;
esac
