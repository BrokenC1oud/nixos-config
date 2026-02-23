{ pkgs, ... }:
{
  home.packages = with pkgs; [
    clash-verge-rev
    qq
    telegram-desktop
  ];
}
