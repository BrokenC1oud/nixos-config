{
  fetchFromGitHub,
  stdenvNoCC,
}: stdenvNoCC.mkDerivation {
  pname = "comicMonoLiga";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "wayou";
    repo = "comic-mono-font";
    rev = "2961b5d7c8ec497f6e8e50c5b9cb136af49de325";
    hash = "";
  };

  installPhase = ''
    mkdir -p $out/share/fonts/truetype
    cp *.ttf $out/share/fonts/truetype
  '';
}
