{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.7.0";
  hash = "sha256-YwCfiOPbrqcKwTePq8hVWuFHddMoKRdcXaJVGr4Dky8=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
