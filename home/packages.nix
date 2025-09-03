{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fastfetch
    tokei

    google-chrome
    
    tree
  ];
}