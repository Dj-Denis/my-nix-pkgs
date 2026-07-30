{
  lib,
  python3Packages,
  fetchFromGitHub,
  qt6,
  makeBinaryWrapper,
  p7zip,
  unrar,
  cabextract,
  copyDesktopItems,
  makeDesktopItem,
}:

python3Packages.buildPythonApplication rec {
  pname = "amethyst-mod-manager";
  version = "2.0.5";

  src = fetchFromGitHub {
    owner = "ChrisDKN";
    repo = "Amethyst-Mod-Manager";
    rev = "v${version}";
    hash = "sha256-TR2dLZ+7gHSO8eosskCKg5JP9b/2MCZQingd3psFK8M="; # Replace with real hash
  };

  format = "other";

  nativeBuildInputs = [
    qt6.wrapQtAppsHook
    makeBinaryWrapper
    copyDesktopItems
  ];

  buildInputs = [
    qt6.qtbase
  ];

  propagatedBuildInputs = with python3Packages; [
    pyside6
    py7zr
    libarchive-c
    pillow
    lz4
    zstandard
    requests
    websocket-client
    keyring
    jeepney
    importlib-metadata
    backports-tarfile
    msgpack
    bsdiff4
  ];

  runtimeDeps = [
    p7zip
    unrar
    cabextract
  ];

  dontWrapQtApps = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/amethyst-mod-manager
    cp -a src/run_qt.py src/cli.py src/app_bootstrap.py src/version.py src/gui_qt \
          src/wizards_qt src/Utils src/Games src/LOOT src/Nexus src/icons src/wrappers \
          $out/share/amethyst-mod-manager/
    [ -f Changelog.txt ] && cp Changelog.txt $out/share/amethyst-mod-manager/

    for size in 64 128 256; do
      mkdir -p $out/share/icons/hicolor/''${size}x''${size}/apps
      cp src/appimage/mod-manager.png $out/share/icons/hicolor/''${size}x''${size}/apps/amethyst-mod-manager.png
    done

    mkdir -p $out/bin
    makeWrapper ${python3Packages.python.interpreter} $out/bin/amethyst-mod-manager \
      --add-flags "$out/share/amethyst-mod-manager/run_qt.py" \
      --set MOD_MANAGER_GAMES "$out/share/amethyst-mod-manager/Games" \
      --prefix PATH : ${lib.makeBinPath runtimeDeps} \
      --prefix PYTHONPATH : "$PYTHONPATH" \
      ''${qtWrapperArgs[@]}

    makeWrapper ${python3Packages.python.interpreter} $out/bin/amethyst-mod-manager-cli \
      --add-flags "$out/share/amethyst-mod-manager/cli.py" \
      --set MOD_MANAGER_GAMES "$out/share/amethyst-mod-manager/Games" \
      --prefix PATH : ${lib.makeBinPath runtimeDeps} \
      --prefix PYTHONPATH : "$PYTHONPATH" \
      ''${qtWrapperArgs[@]}

    runHook postInstall
  '';

  desktopItems = [
    (makeDesktopItem {
      name = "amethyst-mod-manager";
      exec = "amethyst-mod-manager";
      icon = "amethyst-mod-manager";
      comment = "A native Linux mod manager inspired by MO2 and Vortex";
      desktopName = "Amethyst Mod Manager";
      categories = [ "Game" ];
    })
  ];

  meta = with lib; {
    description = "A native Linux mod manager inspired by MO2 and Vortex";
    homepage = "https://github.com/ChrisDKN/Amethyst-Mod-Manager";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
    mainProgram = "amethyst-mod-manager";
  };
}
