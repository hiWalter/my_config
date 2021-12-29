#!/bin/env zsh

export PATH=$HOME/Library/Python/3.10/bin:$PATH

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# avoid ranger double loading...
export RANGER_LOAD_DEFAULT_RC=FALSE
