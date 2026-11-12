{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "vectorcraft";
  version = "0.24.1";
  hash = "sha256-oJBRQlL94UVJWsb8Zdb/ExHWmJmOV7pDTV0IlsPR+/o=";
  description = "An open-source, clean-room reimplementation of Adobe Illustrator, built in pure Rust";
  homepage = "https://github.com/storytold/vectorcraft";
}
