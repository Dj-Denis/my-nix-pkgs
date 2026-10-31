{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "gridcraft";
  version = "0.14.2";
  hash = "sha256-nIFTt2MK373vgCGqm5guHvGHts8nzSIzKAz68LpqGEI=";
  description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
  homepage = "https://github.com/storytold/gridcraft";
}
