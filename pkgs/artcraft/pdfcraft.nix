{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.9.0";
  hash = "sha256-/199o2oQiTQOP9umlrKGzDF6yPBwXMjETBxJ2cpMVOA=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
