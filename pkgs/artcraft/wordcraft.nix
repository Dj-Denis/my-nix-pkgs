{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "wordcraft";
  version = "0.13.2";
  hash = "sha256-bPT8wDCi1PuvM0+dbGDXPCof3uKmlRwGfl+hFf4Qc48=";
  description = "An open-source, clean-room reimplementation of Microsoft Word in pure Rust";
  homepage = "https://github.com/storytold/wordcraft";
}
