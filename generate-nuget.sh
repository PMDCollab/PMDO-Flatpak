#!/usr/bin/env bash
set -e

git clone https://github.com/PMDCollab/PMDC PMDC || true
(
    cd PMDC
    git fetch
    git checkout v0.8.4
    git submodule update --init --recursive
)

./flatpak-builder-tools/dotnet/flatpak-dotnet-generator.py \
    sources-x64.json \
    PMDC/PMDC/PMDC.csproj \
    --runtime=linux-x64 \
    --dotnet=7 \
    --freedesktop=23.08 \
    --destdir=nuget-sources-linux-x64

./flatpak-builder-tools/dotnet/flatpak-dotnet-generator.py \
    sources-arm.json \
    PMDC/PMDC/PMDC.csproj \
    --runtime=linux-arm \
    --dotnet=7 \
    --freedesktop=23.08 \
    --destdir=nuget-sources-linux-arm

./flatpak-builder-tools/dotnet/flatpak-dotnet-generator.py \
    sources-arm64.json \
    PMDC/PMDC/PMDC.csproj \
    --runtime=linux-arm64 \
    --dotnet=7 \
    --freedesktop=23.08 \
    --destdir=nuget-sources-linux-arm64
