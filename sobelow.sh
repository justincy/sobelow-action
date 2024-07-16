#!/bin/sh -l

mix local.hex --force
mix escript.install hex sobelow --force

echo "GITHUB_WORKSPACE: $GITHUB_WORKSPACE"
pwd

if [ "$2" = "false" ]; then
    .mix/escripts/sobelow $1
else
    .mix/escripts/sobelow $1 --format sarif >> results.sarif
fi