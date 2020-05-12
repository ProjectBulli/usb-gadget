#!/usr/bin/env bash
export PKG_CONFIG_ALLOW_CROSS=1
export RUSTFLAGS='-C link-arg=-s' #strip debug information
cargo deb
ls -Ss1pq --block-size=1024 target/debian/*.deb
dpkg-deb -c target/debian/*.deb
