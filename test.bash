#!/bin/bash

ng () {
       echo ${1}行目が違う
       res=1
}

res=0
a=猪野
[ "$a" = 井田 ] || ng "$LINENO"
[ "$a" = 猪野 ] || ng "$LINENO"

exit $res
