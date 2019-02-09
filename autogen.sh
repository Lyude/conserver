#!/bin/sh

cd "$(dirname "$0")" || exit $?

exec autoreconf --force --install --verbose
