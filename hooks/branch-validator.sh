#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$branch" = "auth" ] || [ "$branch" = "main" ]; then
  echo "Нельзя делать коммиты напрямую в главные ветки"
  exit 1
fi