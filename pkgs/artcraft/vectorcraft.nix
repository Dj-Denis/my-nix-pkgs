{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.19.0";
  hash = "sha256-rlN4iPSWkZqosxk+om8F/SWEvgDv+G2AoH4mRPEGHpI=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
