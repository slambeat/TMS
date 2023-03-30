#!/usr/bin/env bash

i=$1
a=$2
b=$3

usage() {
    echo -e "Unexpected input \nUse div for divide\nUse add for addition\nUse sub for substract\nUse mult for multiplicate\nAfter action put 2 numbers"
    exit 1
}

add() {
    res=`echo $a + $b | bc`
}

div() {
    res=`echo "scale=2; $a / $b" | bc`
}

sub() {
    res=`echo $a - $b | bc`
}

mult() {
    res=`echo $a \* $b | bc`
}

main () {
    if [[ $b == 0 ]] && (($i == "div")); then
        usage
    elif [[ $* -le 0 ]] ; then
        usage
    fi
    case $i in
 add)add
  ;;
  sub)sub
  ;;
  mult)mult
  ;;
  div)div
  ;;
esac
echo $res
}

main "$@"



