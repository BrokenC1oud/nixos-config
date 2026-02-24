{ pkgs, ... }:
{
  home.packages = with pkgs; [
    clash-verge-rev
    (gimp-with-plugins.override {
      plugins = [ gimpPlugins.resynthesizer ];
    })
    libreoffice-fresh
    qq
    telegram-desktop
    vlc
  ];
}
