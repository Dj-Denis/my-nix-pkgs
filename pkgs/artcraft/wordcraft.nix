{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.15.2";
  hash = "sha256-Nm5U4jW0Yxd5wMeMB3eogN5REWPekTCreM5ZWD96C5o=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
