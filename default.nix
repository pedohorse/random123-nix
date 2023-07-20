{ stdenv, fetchFromGitHub, doxygen}:
stdenv.mkDerivation rec {
  pname = "random123";
  version = "1.14.0";

  nativeBuildInputs = [ doxygen ];

  src = fetchFromGitHub {
    owner = "DEShawResearch";
    repo = "random123";
    rev = "v${version}";
    hash = "sha256-r69CupcUjlXSyPFvh8J9r1lalKgfc8NoRjfXMY9wmqs=";
  };

  makeFlags = [ "prefix=$(out)" ];
}
