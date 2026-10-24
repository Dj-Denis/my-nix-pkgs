{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "gridcraft";
  version = "0.11.1";
  hash = "sha256-8sg+bCZEmmxFmD6QO/MsHUwwKyBC8mPq2ZUnESnHDoc=";
  description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
  homepage = "https://github.com/storytold/gridcraft";
}
