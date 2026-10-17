{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "gridcraft";
  version = "0.7.0";
  hash = "sha256-wBvC3EKVVW9TgQ3+1KhaP1g4hVLBV6ED4QYmwGmznhw=";
  description = "GridCraft: an open-source, clean-room spreadsheet (Microsoft Excel-style) in pure Rust. By ArtCraft";
  homepage = "https://github.com/storytold/gridcraft";
}
