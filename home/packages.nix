{ pkgs, ... }:
{
  home.packages = with pkgs; [
    clash-verge-rev
    gdu
    (gimp-with-plugins.override {
      plugins = [ gimpPlugins.resynthesizer ];
    })
    libreoffice-fresh
    qq
    telegram-desktop
    tokei
    vlc
    wechat
  ];
}
