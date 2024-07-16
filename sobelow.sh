#!/bin/sh -l

mix local.hex --force
mix escript.install hex sobelow --force

ls -al ~
ls -al ~/.mix
ls -al ~/.mix/escripts

mix escript

if [ "$2" = "false" ]; then
    ~/.mix/escripts/sobelow $1
else
    ~/.mix/escripts/sobelow $1 --format sarif >> results.sarif
fi