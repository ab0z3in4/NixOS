{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  pname = "sddm-theme";
  version = "1.3";

  src = fetchFromGitHub {
    owner = "ab0z3in4";
    repo = "sddm-theme";
    rev = "main";
    sha256 = "VB1x5URKSo0oScLVTQIeh4AAmwJFgbZfqF8NdjN8Rpw=";
  };

  installPhase = ''
    mkdir -p $out/share/sddm/themes/astronaut-theme
    cp -r * $out/share/sddm/themes/astronaut-theme
  '';
}
