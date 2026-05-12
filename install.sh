#!/usr/bin/env bash

set -euo pipefail

SCRIPT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source ${SCRIPT_ROOT}/utils/packages.sh

source ${SCRIPT_ROOT}/scripts/system/_init.sh
source ${SCRIPT_ROOT}/scripts/desktop/_init.sh
source ${SCRIPT_ROOT}/scripts/home/_init.sh
