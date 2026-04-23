# Development shell for beepboop
{
  pkgs,
  inputs,
  system,
}:
pkgs.mkShellNoCC {
  name = "beepboop-dev";

  buildInputs = with pkgs; [
    # Development tools
    git

    # Formatting
    alejandra

    # Add development-specific tools here
  ];

  shellHook = ''
    echo "beepboop development shell"
  '';
}
