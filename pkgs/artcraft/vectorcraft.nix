{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.18.0";
  hash = "sha256-dpSLUO943Ugqbs4G8QtwR5N7vAwF9c9rxD2IsH902CY=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
