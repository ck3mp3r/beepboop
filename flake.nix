{
  description = "beepboop";

  inputs = {
    base-nixpkgs.url = "github:ck3mp3r/flakes?dir=base-nixpkgs";
    nixpkgs.follows = "base-nixpkgs/unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rustnix = {
      url = "github:ck3mp3r/flakes?dir=rustnix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.fenix.follows = "fenix";
    };
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];

      perSystem = {pkgs, ...}: {
        # Development shell
        devShells.default = pkgs.mkShell {
          # buildInputs = with pkgs; [
          #   # Add your dependencies here
          # ];
        };

        # Packages
        packages.default = pkgs.stdenv.mkDerivation {
          name = "beepboop";
          src = ./.;

          buildPhase = ''
            # Add build commands here
          '';

          installPhase = ''
            mkdir -p $out/bin
            # Add install commands here
          '';
        };

        # Formatter
        formatter = pkgs.alejandra;
      };
    };
}
