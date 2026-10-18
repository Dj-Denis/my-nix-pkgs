{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.13.1";
  hash = "sha256-NcD89tP56/9vM9JX/3Du9BQpbzfw2B8oTm+XDiD9ssg=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
