{ nixpkgs }:

let
  pkgs = import nixpkgs {
    system = "armv7l-linux";
  };
in
{
  inherit (pkgs) hello;
}
