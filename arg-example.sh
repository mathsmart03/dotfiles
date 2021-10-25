#!/bin/bash

ARGS=$(getopt -a --options c:d:o --long "config:,directory:,old-directory:" -- "$@")

eval set -- "$ARGS"

while true; do
  case "$1" in
    -c|--config)
      config="$2"
      echo "Name: $name"
      shift 2;;
    -d|--directory)
      dir="$2"
      echo "ID: $identification"
      shift 2;;
    -o|--old-directory)
      olddir="$2"
      shift 2;;
    --)
      break;;
  esac
done
