#! /bin/sh

curl --silent -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > /home/rejyr/.cargo/bin/rust-analyzer
chmod +x /home/rejyr/.cargo/bin/rust-analyzer
