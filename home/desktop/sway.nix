{ pkgs, ... }:
{
  wayland.windowManager.sway = {
    enable = true;

    config = rec {
      modifier = "Mod4";
      terminal = "kitty";
    };
  };

  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "top";
      }
    ];
  };

  home.packages = with pkgs; [
    wl-clipboard
  ];
}
