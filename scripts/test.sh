#!/usr/bin/env bash

# Exit script as soon as a command fails.
set -o errexit

yarn run compile-contracts

yarn mocha --exit --recursive test -t 10000

exit 0
