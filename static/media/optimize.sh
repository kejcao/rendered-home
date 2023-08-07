#!/bin/bash

set -e

for fp in *.{gif,svg,png}; do
    case "$fp" in
        *.png)
            ffmpeg -y -i "$fp" "${fp%.*}.jpg"
            rm "$fp"
            ;;
        *)
            ;;
    esac
done
