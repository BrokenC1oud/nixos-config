{ ... }:
{
  imports = [
    ./packages.nix

    ./apps/chromium.nix
    ./apps/kitty.nix
    ./apps/prismlauncher.nix
    ./apps/zed.nix

    ./system/fcitx5.nix
    ./system/fish.nix
    ./system/git.nix
    ./system/gpg.nix
    ./system/hyfetch.nix
    ./system/nvim.nix
  ];

  home.username = "broken_cloud";
  home.homeDirectory = "/home/broken_cloud";

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}
