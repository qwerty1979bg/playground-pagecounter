#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

which redis-server &>/dev/null || {
  apt-get update
  apt-get install -qq --no-install-recommends redis-server
}

