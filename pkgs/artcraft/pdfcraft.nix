{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.18.2";
  hash = "sha256-MjutezczkgdkYeLK1dtjsi9HoDK6AFpsSjXzSD0F2uQ=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
