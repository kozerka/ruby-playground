set -o errexit
bundle install
bulnde exec rails assets:precompile
bundle ecec rails assets:clean
