{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.12.0";
  hash = "sha256-zZq9DuehG5ha8cFXFlMzLJYHfl3MSLXhh7VcgvR1oz4=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
