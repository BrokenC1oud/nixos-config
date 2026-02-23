{ pkgs, ... }:
{
  i18n.inputMethod.enabled = "fcitx5";
  i18n.inputMethod.fcitx5.addons = with pkgs; [
    qt6Packages.fcitx5-chinese-addons
    fcitx5-nord
    fcitx5-gtk
  ];

  systemd.user.services.fcitx5-daemon = {
    Unit = {
      Description = "Fcitx5 input method editor";
      After = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${pkgs.fcitx5}/bin/fcitx5";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
}
