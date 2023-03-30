#!/usr/bin/env bash

usage(){
    echo "Print some elements"
}

main(){
    arr=($*)
    if [[ ${#arr[@]} == 0 ]]; then
        usage
    else
        echo "${arr[@]}" | tr '-' ' ' | tr [:lower:] [:upper:] | tr ' ' '\n' | cut -c 1 | tr '\n' ' ' | tr -d ' '
        echo "" 
    fi
} 

main "$@"