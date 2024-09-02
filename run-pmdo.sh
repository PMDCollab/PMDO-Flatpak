#!/usr/bin/env bash
# If arguments are given, launch PMDO raw. This allows for setting a custom asset path.
if [ $# -eq 0 ]; then
    org.pmdcollab.pmdo -asset /app/share/PMDO/Assets/ -appdata
else
    org.pmdcollab.pmdo "$@" -appdata
fi
