{ nixpkgs }:

let
  pkgs = import nixpkgs {
    system = "armv7l-linux";
  };
in
{
  inherit (pkgs)
    # essentials
    busybox
    nix
    stdenv

    # sanity check
    hello

    # common interpreters
    ghc
    go
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
    ;
}
