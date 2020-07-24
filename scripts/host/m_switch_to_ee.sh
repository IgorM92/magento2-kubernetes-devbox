#!/usr/bin/env bash

# Copyright © Magento, Inc. All rights reserved.
# See COPYING.txt for license details.

cd "$(dirname "${BASH_SOURCE[0]}")/../.." && devbox_dir=$PWD

source "${devbox_dir}/scripts/functions.sh"

arguments=$@
executeInMagento2Container "${devbox_dir}/scripts/guest/m-switch-to-ee" -- "${arguments}" 2> >(logError)
# Explicit exit is necessary to bypass incorrect output from devbox in case of errors
exit 0
