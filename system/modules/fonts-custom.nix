{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  pname = "fonts-custom";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "ab0z3in4";
    repo = "fonts-custom";
    rev = "main";
    sha256 = "A1zs4AvQhmr/e2tjASDvBFsXTMpneVxUVdrQ3rzkacM=";
  };

  installPhase = ''
    mkdir -p $out/share/fonts
    cp -r * $out/share/fonts/
  '';
}
