#!/usr/bin/env bash

set -euo pipefail

SCRIPT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source ${SCRIPT_ROOT}/utils/packages.sh

source ${SCRIPT_ROOT}/system/_init.sh
source ${SCRIPT_ROOT}/apps/_init.sh
source ${SCRIPT_ROOT}/desktop/_init.sh
source ${SCRIPT_ROOT}/config/_init.sh
