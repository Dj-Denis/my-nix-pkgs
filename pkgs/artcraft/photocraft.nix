{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.10.0";
  hash = "sha256-xdRVeF2cLq9pW/jmMnxNbSOjnduVamEU8MW2Qyb5hOE=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
