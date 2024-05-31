#!/usr/bin/env bash
set -eo pipefail

sleep 60
bats test/services-integration-test.bats