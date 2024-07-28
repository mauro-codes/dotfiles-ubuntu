#!/bin/bash

CURRENT=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name')

if [ "$CURRENT" == "\"1\"" ]; then
    i3-msg workspace 2
else
    i3-msg workspace 1
fi
