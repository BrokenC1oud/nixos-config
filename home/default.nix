{ config, pkgs, ... }:

{
  home.username = "broken_cloud";
  home.homeDirectory = "/home/broken_cloud";
  home.stateVersion = "25.05";

  imports = [
    ./apps/vscode.nix

    ./packages.nix

    ./system/git.nix
    ./system/utils.nix
    ./system/shell.nix
  ];
}
