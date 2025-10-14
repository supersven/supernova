{ compiler ? "ghc98" }:

let
  pkgs = import (
    builtins.fetchTarball {
      name   = "nixos-25.05";
      url    = "https://github.com/NixOS/nixpkgs/archive/3bcc93c5f7a4b30335d31f21e2f1281cba68c318.tar.gz";
      sha256 = "sha256:0hkyv5s083d59da8jrmsyg3iwvl99jhph5iyxia6d67vybn3jsk1";
    }
  ) {};

  hp = pkgs.haskell.packages.${compiler}.override {
    overrides = newPkgs: oldPkgs: rec {
      # network = newPkgs.network_3_1_2_0;
    };
  };
in
{
  pkgs = pkgs;
  hp = hp;
}
