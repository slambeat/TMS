#!/usr/bin/env bash

array1=("foo", "bar", "blah", "test", "123", "smad", "dasd", "foo")
array2=("bar", "blah", "test", "1223", "ss", "foo", "dfd")

echo ${array1[@]} ${array2[@]} | tr ' ' '\n' | sort | uniq -d