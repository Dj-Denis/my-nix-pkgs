{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.6.0";
  hash = "sha256-tl/XAbY2DTugsFkAR0v5LZkmx2gC/vp76ZZpD8vDlsY=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
