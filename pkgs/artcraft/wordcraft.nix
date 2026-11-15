{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.18.1";
  hash = "sha256-MSoFfUbdgFl8EtzP0Ql84l7epAuqrrULy28BrBrrrbU=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
