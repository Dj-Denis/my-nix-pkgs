{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.16.1";
  hash = "sha256-uzbgcdEKFK9RISmaDu2NfF245cdYC2y+vsCFxB0b/go=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
