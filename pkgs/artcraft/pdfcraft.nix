{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.21.1";
  hash = "sha256-wpGekETv/eMY5mgHrSohu7dKlVWzwLmfmtDEDPYc4l4=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
