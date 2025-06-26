{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  pname = "fonts-custom";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "ab0z3in4";
    repo = "fonts-custom";
    rev = "main";
    sha256 = "sha256-/DZtWfO4R5N7S8bOxBXFGzgIbktOwEMYuZmbHn08/38=";
  };

  installPhase = ''
    mkdir -p $out/share/fonts
    cp -r * $out/share/fonts/
  '';
}
