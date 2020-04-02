#!/usr/bin/env bash

START_DIR="$PWD"

while [[ "$PWD" != "/" ]]; do
  if [[ -d .idea ]]; then
    echo "In existing project"
    webstorm .
    exit 0
  fi
  cd ..
done

cd $START_DIR
echo "Opening new project"
webstorm .
