#!/bin/sh
# Copyright (c) 2026 Rodrigo Monteiro Junior. All Rights Reserved.

# 'List Scripts' - Shell scripting listing tool

DIR=$(dirname "$0")

# shellcheck source=./common
. "$DIR"/common

ls "$BINDIR"
