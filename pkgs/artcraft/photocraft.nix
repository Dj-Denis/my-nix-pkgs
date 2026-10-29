{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.17.0";
  hash = "sha256-Uln5xCjI7jR4w1UA7OmHE1Ycr8BQ5MnrNUpQUPNusrg=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
