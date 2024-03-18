#!/bin/sh
#
# Rebuilds our resume whenever any matching .tex file changes. If paired with
# a PDF viewer that automatically reloads modified documents, we've got one
# spicy IDE cooking!

set -eu
root="$(git rev-parse --show-toplevel)"
cd "$root"

printf "\e[1;36m%s\e[0m\n" "Watching our resume for changes..."
find resume.tex patches/ -name '*.tex' | entr -cap "$root/scripts/build.sh"
