{ pkgs, lib, ... }:
{
  wayland.windowManager.sway = {
    enable = true;

    config = {
      modifier = "Mod4";
      terminal = "kitty";
      menu = "${pkgs.wofi}/bin/wofi --show drun";

      bars = [
        {
          position = "top";
        }
      ];

      keybindings = lib.mkOptionDefault {
        "${modifier}+Space" = "exec ${menu}";
      };
    };
  };

  home.packages = with pkgs; [
    wl-clipboard
  ];
}
