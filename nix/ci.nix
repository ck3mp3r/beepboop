{pkgs, ...}: {
  devShells.ci = pkgs.mkShellNoCC {
    name = "beepboop-ci";

    buildInputs = with pkgs; [
      # CI/CD tools
      git

      # Formatting
      alejandra

      # Add CI-specific tools here
    ];

    shellHook = ''
      echo "CI environment loaded"
    '';
  };
}
