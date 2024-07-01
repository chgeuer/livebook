#!/bin/bash

# export LIVEBOOK_IP=0.0.0.0
# export LIVEBOOK_PORT=4000
# export LIVEBOOK_IFRAME_PORT=4001

#export LIVEBOOK_PASSWORD=SuperSecret123.-

export LIVEBOOK_DATA_PATH=/mnt/c/github/chgeuer/elixir_snips
export LIVEBOOK_HOME=/mnt/c/github/chgeuer/elixir_snips

export MIX_ENV=prod

# $HOME/.mix/escripts/livebook server
cd ~/github/livebook-dev/livebook
iex -S mix phx.server.browser
