{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.9.0";
  hash = "sha256-kTAMFIWtcQg5YEsIVTHJDnesfr2yowJZMJrXSvz9uQ0=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
