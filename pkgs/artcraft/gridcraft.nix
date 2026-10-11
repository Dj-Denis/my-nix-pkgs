{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "gridcraft";
  version = "0.4.0";
  hash = "sha256-0k855lr/r1sY6/KkI+8S8FQxttI2qLE0V+e/WOMoMJw=";
  description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
  homepage = "https://github.com/storytold/gridcraft";
}
