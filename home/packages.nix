{ pkgs, ... }:
{
  home.packages = with pkgs; [
    clash-verge-rev
    discord-ptb
    (gimp-with-plugins.override {
      plugins = [ gimpPlugins.resynthesizer ];
    })
    libreoffice-fresh
    kdePackages.kdenlive
    qq
    telegram-desktop
    vlc
  ];
}
