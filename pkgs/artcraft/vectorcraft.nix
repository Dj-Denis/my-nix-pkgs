{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.16.0";
  hash = "sha256-ZR+sFyVSca0dvIuh6Ch9ufKOUpupoU3QOD7Kk6LMWqY=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
