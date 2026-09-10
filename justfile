default:
    @just --list

check:
    nix flake check

fmt:
    nix fmt

update:
    nix update flake
