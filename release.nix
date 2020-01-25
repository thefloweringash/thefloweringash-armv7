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
    binutils
    busybox
    bzip2
    coreutils
    curl
    gettext
    nix
    patchelf
    stdenv
    texinfo
    which
    xz
    zlib

    # sanity check
    hello

    # common interpreters, compilers and dev tools
    autoconf
    automake
    bison
    cargo
    clang
    expect
    flex
    ghc
    go
    guile
    help2man
    llvm
    lua
    perl
    python2
    python3
    ruby
    rustc
    swig
    tcl
    tk

    # common build systems and tools
    cmake
    meson
    ninja
    pkg-config

    # commonly used tools
    asciidoc
    direnv
    file
    gdb
    git
    gnupg
    mtdutils
    ncdu
    neofetch
    pandoc
    sqlite
    sysstat
    tcpdump
    tio
    tmux
    tree
    unzip
    vim
    xterm

    # common libraries
    db
    expat
    gmp
    isl
    libelf
    libffi
    libmpc
    libxml2
    libxslt
    mpfr
    ncurses
    npth
    pcre
    readline

    # kernels
    linux
    linux_latest

    # nix specific tooling
    cachix
    lorri
    nix-diff
    ;
}
