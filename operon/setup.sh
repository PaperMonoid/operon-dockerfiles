#!/bin/bash
sudo -i -u operon bash << EOF
cd /home/operon/
sh <(curl -L https://nixos.org/nix/install)  --yes --no-daemon
.local/state/nix/profiles/profile/bin/nix build --extra-experimental-features 'nix-command flakes' github:heal-research/operon?ref=cpp20 --no-write-lock-file
.local/state/nix/profiles/profile/bin/nix-store --gc
EOF
