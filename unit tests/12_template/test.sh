#!/usr/bin/env bash

unset CDPATH
cd "$( dirname "${BASH_SOURCE[0]}" )"

source "$BASHBOOSTER"

FOO=1
BAR='Some Value'
BAZ='One Two Three'

RESULT="$( bb-template "template.bbt" )"
EXPECT="$( cat "expect.txt" )"

bb-assert '[[ "$RESULT" == "$EXPECT" ]]'
