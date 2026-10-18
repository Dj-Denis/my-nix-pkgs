{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "gridcraft";
  version = "0.8.0";
  hash = "sha256-SgKeINqGutRnBjOc5FFqIERcExwNgvahFHciCMXYMbM=";
  description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
  homepage = "https://github.com/storytold/gridcraft";
}
