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
          python-libloot = pkgs.callPackage ./pkgs/python-libloot.nix {};
          amethyst-mod-manager = callPackage ./pkgs/amethyst-mod-manager.nix {
            inherit python-libloot;
          };
          pdfcraft = pkgs.callPackage ./pkgs/artcraft/pdfcraft.nix {};
          wordcraft = pkgs.callPackage ./pkgs/artcraft/wordcraft.nix {};
          vectorcraft = pkgs.callPackage ./pkgs/artcraft/vectorcraft.nix {};
          gridcraft = pkgs.callPackage ./pkgs/artcraft/gridcraft.nix {};
          photocraft = pkgs.callPackage ./pkgs/artcraft/photocraft.nix {};
        };
      }
    );
}
