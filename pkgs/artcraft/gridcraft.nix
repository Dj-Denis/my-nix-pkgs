{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "gridcraft";
  version = "0.19.1";
  hash = "sha256-jZe7otW7AP1p7VUGSFLB/ZFN5A1ezVXKAcjfgbgolG0=";
  description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
  homepage = "https://github.com/storytold/gridcraft";
}
