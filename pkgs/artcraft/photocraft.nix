{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.21.0";
  hash = "sha256-MRXlbMZG2601QeObYyO4okMY/uYZTXhN320GX3tdLTc=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
