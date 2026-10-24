{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "photocraft";
  version = "0.15.1";
  hash = "sha256-tiK+QDVVEwVvgVKv6JXQoFwbw8NEoCf3cqmhL6PRwiM=";
  description = "An open-source, clean-room reimplementation of Adobe Photoshop in pure Rust";
  homepage = "https://github.com/storytold/photocraft";
}
