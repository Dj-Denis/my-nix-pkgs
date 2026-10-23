{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.13.0";
  hash = "sha256-WYUZ6ivHfGbKmpBiQeH+Psz3RfUGJ84829W15nWkVtM=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
