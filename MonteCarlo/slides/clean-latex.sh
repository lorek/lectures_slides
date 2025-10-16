#!/bin/bash

exts="aux bbl blg brf idx ilg ind lof log lol lot nav out snm tdo toc synctex.gz nlo nls vrb"

for x in "${@:-.}"; do
    arg=$(echo ${x:-.} | perl -pe 's/\.(tex|pdf)$//')

    if [[ -d "$arg" ]]; then
        for ext in $exts; do
             cmd="rm -f '$arg'/*.$ext"
	     echo $cmd
	     eval $cmd
        done
    else
        for ext in $exts; do
	     cmd="rm -f '$arg'.$ext"
	     echo $cmd
	     eval $cmd
        done
    fi
done
