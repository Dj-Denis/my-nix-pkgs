{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.4.0";
  hash = "sha256-hA+YXJj/rrFSqGQhOZ5RuQXWz4vLCALs0mgtfXcjGiY=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
