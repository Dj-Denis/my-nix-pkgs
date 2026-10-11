{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.8.0";
  hash = "sha256-SLjmcaQV9d3pEqBJ+CzaBbZvfm/XmoG0WIFv+Rhogs8=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
