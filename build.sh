#!/bin/bash
set -e

echo "Building ZeroClaw..."
cd /opt/atlas/zeroclaw
cargo build --release --locked --features observability-otel

echo "Installing..."
cp target/release/zeroclaw /usr/local/bin/zeroclaw

echo "Done! Version:"
zeroclaw --version