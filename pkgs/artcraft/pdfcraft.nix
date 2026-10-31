{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.15.0";
  hash = "sha256-sWehjGCnsynwWlu/l+Mtxniq0/jVhm2OQ3j/JCc/gxM=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
