#!/usr/bin/env sh
rustc --crate-type=lib string_generator.rs
rustc -L . unique_string_demo.rs
