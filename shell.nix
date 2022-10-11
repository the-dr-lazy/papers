{ name, pkgs }:

pkgs.mkShell {
  inherit name;

  nativeBuildInputs = builtins.concatMap builtins.attrValues [
    ###################################################
    # Native libraries:
    {
      inherit (pkgs)
        jre8;
    }

    ###################################################
    # Code styles:
    {
      inherit (pkgs)
        pre-commit
        nixpkgs-fmt
        nix-linter;
      inherit (pkgs.python310Packages) pre-commit-hooks yamllint;
    }

    ###################################################
    # Command line tools:
    {
      inherit (pkgs)
        ditaa
        git
        git-lfs;
    }

    ###################################################
    # Languages:
    { }


    ###################################################
    # Language servers:
    { }

    ###################################################
    # Package managers:
    { }
  ];
}
