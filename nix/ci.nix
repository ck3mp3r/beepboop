# CI shell for beepboop - minimal tooling for builds
{
  pkgs,
  inputs,
  system,
}:
pkgs.mkShellNoCC {
  name = "beepboop-ci";

  buildInputs = with pkgs; [
    # CI/CD tools
    git

    # Formatting
    alejandra

    # Add CI-specific tools here
  ];

  shellHook = ''
    echo "beepboop CI environment"
  '';
}
