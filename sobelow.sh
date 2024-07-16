#!/bin/sh -l

mix local.hex --force
mix escript.install hex sobelow --force

pwd
ls -al
ls -al config
ls -al config/secrets

if [ "$2" = "false" ]; then
    ~/.mix/escripts/sobelow $1
else
    ~/.mix/escripts/sobelow $1 --format sarif >> results.sarif
fi