{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "gridcraft";
  version = "0.17.0";
  hash = "sha256-FOk3RVW8bS2cW8QbsxFQvGoctrToPVq0Fj/V12EbBhg=";
  description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
  homepage = "https://github.com/storytold/gridcraft";
}
