#!/usr/bin/env sh
set -eu

for file in examples/*.ua; do
  echo "checking $file"
  uiua check "$file"
done

quarkdown compile main.qd
