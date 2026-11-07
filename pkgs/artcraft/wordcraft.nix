{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.16.0";
  hash = "sha256-MluX8Vu/UyYooxdqnBcUinF18+Txm5MT3jI6tRNgl1I=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
