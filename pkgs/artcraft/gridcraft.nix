{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "gridcraft";
  version = "0.16.1";
  hash = "sha256-Qp4DNM3TDtdev/WUU6ZEEUw8t+M0eZGoGzIEHXX0H+Q=";
  description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
  homepage = "https://github.com/storytold/gridcraft";
}
