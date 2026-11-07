{pkgs}:
pkgs.callPackage ./package.nix {
  pname = "pdfcraft";
  version = "0.19.0";
  hash = "sha256-NleqQP4UbUr0D6sFB8l/buLGzlupk4VnGUQ5vjM1uos=";
  description = "An open-source, clean-room reimplementation of Adobe Acrobat built in pure Rust";
  homepage = "https://github.com/storytold/pdfcraft";
}
