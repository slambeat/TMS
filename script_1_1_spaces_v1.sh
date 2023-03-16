#!/usr/bin/env bash

a=$*
b=$(echo $a | tr -d ' ' )
echo "$b"