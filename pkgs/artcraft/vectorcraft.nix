{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.21.1";
  hash = "sha256-ODu6BvvefLh8fhN5N61RappYVJHFqSfYYx7lS78dTpM=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
