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
        mkArtcraft = pkgs.callPackage ./pkgs/artcraft.nix {};
        artcraft-tools = {
          pdfcraft = {
            version = "0.5.0";
            hash = "sha256-ILNbP9CZwO8Cpye/m6267rZjnFZ0K00ERMwpdNv/X98=";
            description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
            homepage = "https://github.com/storytold/pdfcraft";
          };
          wordcraft = {
            version = "0.4.0";
            hash = "sha256-hA+YXJj/rrFSqGQhOZ5RuQXWz4vLCALs0mgtfXcjGiY=";
            description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
            homepage = "https://github.com/storytold/wordcraft";
          };
          vectorcraft = {
            version = "0.8.0";
            hash = "sha256-SLjmcaQV9d3pEqBJ+CzaBbZvfm/XmoG0WIFv+Rhogs8=";
            description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
            homepage = "https://github.com/storytold/vectorcraft";
          };
          gridcraft = {
            version = "0.4.0";
            hash = "sha256-0k855lr/r1sY6/KkI+8S8FQxttI2qLE0V+e/WOMoMJw=";
            description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
            homepage = "https://github.com/storytold/gridcraft";
          };
          photocraft = {
            version = "0.6.0";
            hash = "sha256-tl/XAbY2DTugsFkAR0v5LZkmx2gC/vp76ZZpD8vDlsY=";
            description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
            homepage = "https://github.com/storytold/photocraft";
          };
        };
        artcraftPackages =
          pkgs.lib.mapAttrs (
            pname: attrs:
              mkArtcraft (attrs // {inherit pname;})
          )
          artcraft-tools;
      in {
        packages = with pkgs;
          rec {
            python-libloot = pkgs.callPackage ./pkgs/python-libloot.nix {};
            amethyst-mod-manager = callPackage ./pkgs/amethyst-mod-manager.nix {
              inherit python-libloot;
            };
          }
          // artcraftPackages;
      }
    );
}
