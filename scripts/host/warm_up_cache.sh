#!/usr/bin/env bash

# Copyright © Magento, Inc. All rights reserved.
# See COPYING.txt for license details.

cd "$(dirname "${BASH_SOURCE[0]}")/../.." && devbox_dir=$PWD

source "${devbox_dir}/scripts/functions.sh"

cd "${devbox_dir}"
executeInMagento2Container "${devbox_dir}/scripts/guest/warm_up_cache" 2> >(logError)
# Explicit exit is necessary to bypass incorrect output from devbox in case of errors
exit 0
