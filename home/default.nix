{ ... }:
{
  imports = [
    ./packages.nix
    
    ./apps/chromium.nix

    ./system/git.nix
    ./system/hyfetch.nix
  ];

  home.username = "broken_cloud";
  home.homeDirectory = "/home/broken_cloud";

  home.stateVersion = "26.05";
  programs.home-manager.enable = true;
}
