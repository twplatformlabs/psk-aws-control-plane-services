#!/usr/bin/env bash
set -eo pipefail


sleep 60
# run basic smoketest for service health
bats test/services-integration-test.bats

# run hpa test to confirm metrics-server health



# run basi
# run hpa test to confirm metrics-server health

