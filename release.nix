{ nixpkgs }:

let
  pkgs = import nixpkgs {
    system = "armv7l-linux";
  };
in
{
  inherit (pkgs)
    # essentials
    stdenv

    # sanity check
    hello

    # common interpreters
    ghc
    go
    perl
    python3
    ruby
    rustc

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
