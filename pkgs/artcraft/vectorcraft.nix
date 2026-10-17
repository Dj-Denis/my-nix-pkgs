{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.12.0";
  hash = "sha256-Z1DbEJ06JTxRyCl1r2UPQjhLonp2j3JSlDHt+1hQgmk=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
