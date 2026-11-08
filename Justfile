set shell := ["bash", "-euo", "pipefail", "-c"]

mod check 'check.just'
mod fix 'fix.just'
mod publish 'publish.just'

default:
    @just --list --list-submodules

build:
    cargo build --all-features

test:
    cargo test --all-features

ci: check::all build test
