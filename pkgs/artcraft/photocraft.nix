{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.14.0";
  hash = "sha256-PR9gp2wlqvv1PyPP7dNoe9metvUwmSDhQNWIvTISyTY=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
