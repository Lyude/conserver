#!/bin/sh

orig_dir="$(pwd)"
src_dir="$(dirname "$0")"

cd "$src_dir" || exit $?

autoreconf --force --install --verbose || exit $?

if test -z "$NOCONFIGURE"; then
	cd "$orig_dir" || exit $?
	"$src_dir"/configure "$@" || exit $?
fi
