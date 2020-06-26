{ nixpkgs }:

let
  pkgs = import nixpkgs {
    system = "armv7l-linux";
  };
in
{
  exampleSystem = (pkgs.nixos {
    fileSystems."/".device  = pkgs.lib.mkDefault "/dev/sda1";
    boot.loader.grub.device = pkgs.lib.mkDefault "/dev/sda";
  }).config.system.build.toplevel;

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
    clang_9 # current latest clang
    expect
    flex
    ghc
    go
    guile
    help2man
    llvm
    llvm_9 # current latest llvm
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
    e2fsprogs
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
    cairo
    db
    expat
    gmp
    gnutls
    isl
    libelf
    libffi
    libmpc
    libxml2
    libxslt
    mesa
    mpfr
    ncurses
    npth
    openssl
    pango
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
