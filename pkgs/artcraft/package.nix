{
  stdenv,
  fetchurl,
  autoPatchelfHook,
  makeWrapper,
  alsa-lib,
  dbus,
  libGL,
  vulkan-loader,
  wayland,
  libxkbcommon,
  libx11,
  libxcb,
  libxcursor,
  libxi,
  libxrandr,
  lib,
  pname,
  version,
  hash,
  description,
  homepage,
  nix-update-script,
}:
stdenv.mkDerivation rec {
  inherit pname version;

  src = fetchurl {
    url = "https://github.com/storytold/${pname}/releases/download/v${version}/${pname}-${version}-linux-x86_64.tar.gz";
    inherit hash;
  };

  nativeBuildInputs = [
    autoPatchelfHook
    makeWrapper
  ];

  buildInputs = [
    stdenv.cc.cc.lib
    alsa-lib
  ];

  runtimeDependencies = [
    dbus.lib
    libGL
    vulkan-loader
    wayland
    libxkbcommon
    libx11
    libxcb
    libxcursor
    libxi
    libxrandr
  ];

  dontConfigure = true;
  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out
    cp -r bin share $out/
    runHook postInstall
  '';

  postFixup = ''
    wrapProgram $out/bin/${pname} --set-default ${lib.toUpper pname}_SKIP_LIB_CHECK 1
  '';

  postInstallCheck = ''
    ${pname} --version
  '';

  passthru.updateScript = nix-update-script {
    extraArgs = [
      "--flake"
      "--override-filename"
      "pkgs/artcraft/${pname}.nix"
    ];
  };

  meta = with lib; {
    inherit description homepage;
    license = with licenses; [
      asl20
      mit
    ];
    platforms = platforms.linux;
    mainProgram = pname;
  };
}
