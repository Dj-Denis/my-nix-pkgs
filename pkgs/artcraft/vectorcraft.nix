{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.22.0";
  hash = "sha256-boEqksrsTboj/XRzT6IKMniG7yBCe1Xy+If+kzSgkz8=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
