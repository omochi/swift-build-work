#!/bin/bash
set -ue
cd "$(dirname "$0")/.."

$(pwd)/repo/swift/utils/build-script \
--preset-file="$(pwd)/tool/presets.ini" \
--preset-file="$(pwd)/repo/swift/utils/build-presets.ini" \
--preset="omochi" \
install_destdir="$(pwd)/out/install" \
installable_package="$(pwd)/out/swift-4.0.tar.gz" \
install_toolchain_dir="$(pwd)/out/toolchain" \
install_symroot="$(pwd)/out/symroot" \
symbols_package="$(pwd)/out/swift-4.0-symbols.tar.gz" \
darwin_toolchain_bundle_identifier="org.swift.swift" \
darwin_toolchain_display_name="Swift 4.0 2017-05-11-a" \
darwin_toolchain_display_name_short="Swift 4.0 2017-05-11-a" \
darwin_toolchain_xctoolchain_name="swift-4.0-2017-05-11-a" \
darwin_toolchain_alias="swift-4.0-2017-05-11-a" \
darwin_toolchain_version="4.0.2017051101" \
--jobs=4
