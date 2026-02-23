{ ... }:
{
  imports = [
    ./packages.nix

    ./apps/chromium.nix
    ./apps/kitty.nix
    ./apps/zed.nix

    ./system/fcitx5.nix
    ./system/fish.nix
    ./system/git.nix
    ./system/hyfetch.nix
    ./system/nvim.nix
  ];

  home.username = "broken_cloud";
  home.homeDirectory = "/home/broken_cloud";

  home.stateVersion = "26.05";
  programs.home-manager.enable = true;
}
