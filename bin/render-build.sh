#!/usr/bin/env bash# exit on error
set -o errexit
bundle install
bulnde exec rails assets:precompile
bundle ecec rails assets:clean
