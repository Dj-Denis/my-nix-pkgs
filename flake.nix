{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true; # For unrar
        };
      in {
        packages = with pkgs; rec {
          python-libloot = pkgs.callPackage ./python-libloot {};
          amethyst-mod-manager = callPackage ./amethyst-mod-manager/default.nix {
            inherit python-libloot;
          };
        };
      }
    );
}
