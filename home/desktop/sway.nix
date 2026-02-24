{ pkgs, lib, ... }:
{
  wayland.windowManager.sway = {
    enable = true;

    config = rec {
      modifier = "Mod4";
      terminal = "kitty";
      menu = "${pkgs.wofi}/bin/wofi --show drun";

      bars = [
        {
          position = "top";
          statusCommand = "${pkgs.i3status}/bin/i3status";
          fonts = {
            size = 16.0;
          };
        }
      ];

      startup = [
        { command = "thrones"; }
      ];

      input = {
        "type:touchpad" = {
          tap = "enabled";
          natural_scroll = "enabled";
          middle_emulation = "enabled";
        };
      };

      keybindings = lib.mkOptionDefault {
        "${modifier}+Return" = "exec ${menu}";

        "${modifier}+1" = "workspace number 1";
        "${modifier}+2" = "workspace number 2";
        "${modifier}+3" = "workspace number 3";
        "${modifier}+4" = "workspace number 4";
        "${modifier}+5" = "workspace number 5";
        "${modifier}+6" = "workspace number 6";
        "${modifier}+7" = "workspace number 7";
        "${modifier}+8" = "workspace number 8";
        "${modifier}+9" = "workspace number 9";
        "${modifier}+0" = "workspace number 10";

        "${modifier}+Shift+1" = "move container to workspace number 1";
        "${modifier}+Shift+2" = "move container to workspace number 2";
        "${modifier}+Shift+3" = "move container to workspace number 3";
        "${modifier}+Shift+4" = "move container to workspace number 4";
        "${modifier}+Shift+5" = "move container to workspace number 5";
        "${modifier}+Shift+6" = "move container to workspace number 6";
        "${modifier}+Shift+7" = "move container to workspace number 7";
        "${modifier}+Shift+8" = "move container to workspace number 8";
        "${modifier}+Shift+9" = "move container to workspace number 9";
        "${modifier}+Shift+0" = "move container to workspace number 10";

        "${modifier}+Tab" = "workspace next";

        "${modifier}+Shift+s" = "exec grim -g \"$(slurp)\" - | wl-copy";
      };

      output = {
        "*" = {
          scale = "1.25";
        };
      };
    };
  };

  programs.i3status = {
    enable = true;
    general = {
      colors = true;
      interval = 5;
    };
    modules = {
      "ipv6".enable = false;
      "wireless _first_".enable = true;
      "battery all".enable = true;
      "disk /".enable = true;
      "load".enable = true;
      "memory".enable = true;
      "tztime local".enable = true;
    };
  };

  home.packages = with pkgs; [
    wl-clipboard
    grim
    slurp
  ];
}
