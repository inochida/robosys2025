#!/usr/bin/python3
# SPDX-FileCopyrightText: 2025 Sota Ino
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目が違う
       res=1
}

res=0

out=$(echo 5 | ./sinsu)
[ "${out}" = 0b101 ] || ng "$LINENO"

out=$(echo 5.5 | ./sinsu)
[ "${out}" = 0b101 ] || ng "$LINENO"

out=$(echo あ | ./sinsu)
[ "$?" = 1 ]     || ng "$LINENO"
[ "${out}" = ""] || ng "$LINENO"

out=$(echo | ./sinsu)
[ "$?" = 1]      || ng "$LINENO"
[ "${out}" = ""] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
