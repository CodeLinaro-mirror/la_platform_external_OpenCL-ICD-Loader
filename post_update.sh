#!/bin/bash

set -e

SCRIPT_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

pushd "${SCRIPT_DIR}/../rust/ninja-to-soong"
cargo run --release -- OpenCL-ICD-Loader --copy-to-aosp
popd
