{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.23.1";
  hash = "sha256-Q4Ou9noHzDcK0lCm7WABUgXT5sRj+vP/Sw9nuBeMz8g=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
