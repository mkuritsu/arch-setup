#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source ${SCRIPT_DIR}/desktop.sh
source ${SCRIPT_DIR}/dev.sh
source ${SCRIPT_DIR}/editors.sh
source ${SCRIPT_DIR}/flatpaks.sh
source ${SCRIPT_DIR}/shell.sh