{ pkgs, ... }:
{
  home.packages = with pkgs; [
    google-chrome

    tree
  ];
}
