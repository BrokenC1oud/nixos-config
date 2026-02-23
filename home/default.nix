{ ... }:
{
  imports = [
    ./system/git.nix
  ];

  home.username = "broken_cloud";
  home.homeDirectory = "/home/broken_cloud";

  home.stateVersion = "26.05";
  programs.home-manager.enable = true;
}
