{
  description = "Scores from the Siestecita EP by Naptaker";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    gridly = {
      flake = false;
      url = "github:openlilylib/gridly";
    };
    naptaker = {
      flake = false;
      url = "github:naptaker/naptaker/lilypond-2.24";
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    oll-core = {
      flake = false;
      url = "github:openlilylib/oll-core";
    };
    pre-commit-hooks-nix.url = "github:cachix/pre-commit-hooks.nix";
    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs = inputs@{ flake-parts, nixpkgs, self, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.flake-parts.flakeModules.easyOverlay
        inputs.pre-commit-hooks-nix.flakeModule
        inputs.treefmt-nix.flakeModule
      ];

      systems = [
        "x86_64-linux"
      ];

      perSystem = { config, pkgs, self', system, ... }: {
        _module.args.pkgs = import nixpkgs {
          config.allowUnfreePredicate = pkg:
            nixpkgs.lib.hasPrefix "siestecita-ep" (nixpkgs.lib.getName pkg);
          overlays = [
            (_final: prev: {
              inherit (self.packages.${prev.stdenv.hostPlatform.system})
                lilypond-with-libs
                oll-lib
                ;
            })
          ];
          inherit system;
        };

        overlayAttrs = config.packages;

        devShells.default = with pkgs; mkShell {
          LILYPOND_SHARE_DIR = "${lilypond-with-libs}/share";
          buildInputs = [
            (frescobaldi.override {
              lilypond = lilypond-with-libs;
            })
            lilypond-with-libs
            nixpkgs-fmt
            # pythonPackages.pywatchman
            timidity
          ];
        };

        packages =
          let
            siestecita-ep = pkgs.callPackage ./. {
              lilypond = pkgs.lilypond-with-fonts;
            };
          in
          {
            inherit siestecita-ep;

            default = self'.packages.siestecita-ep;

            lilypond-with-libs = with pkgs; lib.appendToName "with-libs" (symlinkJoin rec {
              inherit (lilypond) meta name version;

              paths = [
                lilypond
                self'.packages.oll-lib
                openlilylib-fonts.improviso
              ];

              nativeBuildInputs = [ makeWrapper ];
              postBuild = ''
                for binary in "$out"/bin/*; do
                  wrapProgram "$binary" \
                    --set LILYPOND_DATADIR "$out"/share/lilypond/${lilypond.version}
                done
              '';
            });

            oll-lib = pkgs.stdenv.mkDerivation {
              pname = "oll-lib";
              version = "20230821";
              dontUnpack = true;
              dontBuild = true;
              installPhase = ''
                local LILYPOND_DATADIR="$out"/share/lilypond/${pkgs.lilypond.version}
                mkdir -p "$LILYPOND_DATADIR"/ly
                cp -rv ${inputs.gridly} "$LILYPOND_DATADIR"/ly/gridly
                cp -rv ${inputs.naptaker} "$LILYPOND_DATADIR"/ly/naptaker
                cp -rv ${inputs.oll-core} "$LILYPOND_DATADIR"/ly/oll-core
              '';
            };
          } // siestecita-ep.passthru;

        pre-commit.settings.hooks = {
          treefmt.enable = true;
        };

        treefmt = {
          projectRootFile = ./flake.nix;
          programs = {
            deadnix.enable = true;
            nixpkgs-fmt.enable = true;
          };
        };
      };
    };
}
