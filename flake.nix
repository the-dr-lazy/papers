{
  description = "Cascade";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/20dc478985d6545df53f0153f4af125eb014083d";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, utils, ... }:
    let name = "papers";
    in
    utils.lib.eachSystem [ "x86_64-linux" "x86_64-darwin" "aarch64-darwin" ] (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in
      {
        devShell = import ./shell.nix { inherit name pkgs; };
      });
}
