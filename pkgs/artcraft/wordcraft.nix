{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.8.0";
  hash = "sha256-Ds4Hzz2RuSPf2A+QMQ4EmDveZvAnnGtg3c6JWW3eDd8=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
