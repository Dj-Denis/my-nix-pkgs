{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.20.2";
  hash = "sha256-CeAT1o2DE+sLHNbyRhL1tf0NmT//46fBLOzf5c0TGkY=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
