{
  lib,
  python3Packages,
  fetchFromGitHub,
  rustPlatform,
  pkg-config,
  openssl,
}:

python3Packages.buildPythonPackage rec {
  pname = "libloot";
  version = "0.29.6";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "loot";
    repo = "libloot";
    rev = "${version}";
    hash = "sha256-Pz13z0uQfTeo47NJORfZ8n8ucqZdoLVGNIsrf2+OOGA=";
  };

  sourceRoot = "${src.name}/python";

  cargoDeps = rustPlatform.importCargoLock {
    lockFile = "${src}/Cargo.lock";
  };

  postUnpack = ''
    cp ${src}/Cargo.lock $sourceRoot/
  '';

  CARGO_TARGET_DIR = "target";

  nativeBuildInputs = [
    pkg-config
    rustPlatform.cargoSetupHook
    rustPlatform.maturinBuildHook
  ];

  buildInputs = [
    openssl
  ];

  pythonImportsCheck = [ "loot" ];

  meta = with lib; {
    description = "Python bindings for LOOT (Load Order Optimisation Tool)";
    homepage = "https://github.com/loot/libloot";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
  };
}
