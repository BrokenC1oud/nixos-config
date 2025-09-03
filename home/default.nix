{ config, pkgs, ... }:

{
  home.username = "broken_cloud";
  home.homeDirectory = "/home/broken_cloud";

  home.packages = with pkgs;[
    fastfetch

    google-chrome
    tree
  ];

  programs.git = {
    enable = true;
    userName = "BrokenC1oud";
    userEmail = "jgbsxx20130315@gmail.com";

    extraConfig.init.defaultBranch = "master";
  };

  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "transgender";
      mode = "rgb";
      backend = "fastfetch";
    };
  };

  home.stateVersion = "25.05";
}
