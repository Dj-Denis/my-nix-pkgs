{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.10.0";
  hash = "sha256-ypnqNQugrqQQP8gCDK2Y8FHFjZ6fz2cMEZ2BAQjMRf8=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
