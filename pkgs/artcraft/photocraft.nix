{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.18.0";
  hash = "sha256-S4rI4RRqyal+e/3vFrJn1Tlqd4Cf1OIym4Pa14CGV08=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
