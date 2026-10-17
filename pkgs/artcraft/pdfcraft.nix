{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.8.0";
  hash = "sha256-P0/V3dmYAqPTSUdMYc89q9H7cZjqDfANJMwxBRa9HCo=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
