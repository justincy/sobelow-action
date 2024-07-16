#!/bin/sh -l

# Create an empty secrets file to make mix happy.
mkdir -p config/secrets
touch config/secrets/dev.exs

# Install sobelow as an escript (meaning we can run it from the cli and don't need to install deps)
mix local.hex --force
mix escript.install hex sobelow --force

# Run sobelow
cd apps/control_room
~/.mix/escripts/sobelow --config ../../.sobelow-conf --format sarif >> results.sarif