#!/usr/bin/env bash

unset CDPATH
cd "$( dirname "${BASH_SOURCE[0]}" )"

source "$BASHBOOSTER"

bb-assert '[[ -d "$BB_WORKSPACE" ]]'
bb-assert '[[ -d ".bb-workspace" ]]'
