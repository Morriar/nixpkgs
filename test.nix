with (import /Users/alexandreterrasa/dev/nixpkgs {});
let
  # doGemStuff
  gems = pkgs.bundlerEnv {
    name = "your-package";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "your-package";
  buildInputs = [gems ruby];
}
