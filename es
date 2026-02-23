#!/bin/sh
# Copyright (c) 2026 Rodrigo Monteiro Junior. All Rights Reserved.

# 'Edit Script' - Shell scripting modification tool

DIR=$(dirname "$0")

# shellcheck source=./common
. "$DIR"/common

parse -var srcName - "$@"

PROGRAM="$(with_bin "${srcName?}")"

if_exists "$PROGRAM"
nvim "$PROGRAM"
