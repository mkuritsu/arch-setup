#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source ${SCRIPT_DIR}/core.sh
source ${SCRIPT_DIR}/firewall.sh
source ${SCRIPT_DIR}/fonts.sh
source ${SCRIPT_DIR}/keyring.sh
source ${SCRIPT_DIR}/login.sh
source ${SCRIPT_DIR}/paru.sh
source ${SCRIPT_DIR}/power.sh
source ${SCRIPT_DIR}/xdg.sh