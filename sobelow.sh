#!/bin/sh -l

echo "Begin sobelow.sh"

mix local.hex --force
mix escript.install hex sobelow --force

echo "After mix install"

ls -al ~
ls -al ~/.mix
ls -al ~/.mix/escripts

mix escript

echo "Before sobelow"

if [ "$2" = "false" ]; then
    ~/.mix/escripts/sobelow $1
else
    ~/.mix/escripts/sobelow $1 --format sarif >> results.sarif
fi