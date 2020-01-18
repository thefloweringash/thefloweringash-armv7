{ nixpkgs }:

let
  pkgs = import nixpkgs {
    system = "armv7l-linux";
  };
in
{
  inherit (pkgs)
    # essentials
    bash
    busybox
    nix
    stdenv
    zlib

    # sanity check
    hello

    # common interpreters and compilers
    cargo
    clang
    ghc
    go
    llvm
    lua
    perl
    python3
    ruby
    rustc

    # common build systems and tools
    cmake
    meson
    ninja
    pkg-config

    # commonly used tools
    file
    gdb
    git
    mtdutils
    ncdu
    neofetch
    pandoc
    sysstat
    tcpdump
    tio
    tmux
    tree
    vim
    xterm

    # kernels
    linux
    linux_latest
    ;
}
