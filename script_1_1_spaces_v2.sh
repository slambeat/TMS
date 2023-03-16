#!/usr/bin/env bash

a=$*
b=${a//' '}
echo "$b"