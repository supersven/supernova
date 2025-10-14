{ packages ? import lib/pkgs.nix { inherit compiler; }, compiler ? "ghc98" }:

let
  inherit (packages) pkgs;
in
  pkgs.callPackage lib/default.nix {}
