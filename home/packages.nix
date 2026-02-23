{ pkgs, ... }:
{
  home.packages = with pkgs; [
    clash-verge-rev
    gdu
    qq
    telegram-desktop
    tokei
    vlc
  ];
}
