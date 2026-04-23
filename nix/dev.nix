{pkgs, ...}: {
  devShells.dev = pkgs.mkShellNoCC {
    name = "beepboop-dev";

    buildInputs = with pkgs; [
      # Development tools
      git

      # Formatting
      alejandra

      # Add development-specific tools here
    ];

    shellHook = ''
      echo "Development environment loaded"
    '';
  };
}
