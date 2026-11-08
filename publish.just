set shell := ["bash", "-euo", "pipefail", "-c"]

[default]
help:
    @just --list publish

# Check registry publication without a token or any upload.
dry-run:
    cargo publish --registry crates-io --dry-run
