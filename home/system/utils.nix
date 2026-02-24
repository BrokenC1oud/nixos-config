{ pkgs, ... }:
{
  home.packages = with pkgs; [
    tokei

    file
    which
    btop
    gdu
  ];
}
