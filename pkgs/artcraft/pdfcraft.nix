{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.5.0";
  hash = "sha256-ILNbP9CZwO8Cpye/m6267rZjnFZ0K00ERMwpdNv/X98=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
