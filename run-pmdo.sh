#!/usr/bin/env bash
# If arguments are given, launch PMDO raw. This allows for setting a custom asset path.
if [ $# -eq 0 ]; then
    exec PMDC -asset /app/share/PMDO/Assets/
else
    exec PMDC "$@"
fi
