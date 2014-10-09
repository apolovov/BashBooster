#!/usr/bin/env bash

unset CDPATH
cd "$( dirname "${BASH_SOURCE[0]}" )"

source ../../bashbooster.sh

BB_EVENT_MAX_DEPTH=5

# expect: CODE=20
# expect: STDOUT="Event processed"
# expect: WORKSPACE=true

event-handler() {
    echo "Event processed"
    bb-event-delay event
}

bb-event-on event event-handler
bb-event-delay event
