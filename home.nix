{ config, pkgs, ... }:

{
  home.username = "broken_cloud";
  home.homeDirectory = "/home/broken_cloud";

  home.packages = with pkgs;[
    hyfetch

    google-chrome
    tree
  ];

  programs.git = {
    enable = true;
    userName = "BrokenC1oud";
    userEmail = "jgbsxx20130315@gmail.com";

    configExtra = {
      init.defaultBranch = "main";
    };
  };

  home.stateVersion = "25.05";
}
