{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (prismlauncher.override {
      jdks = [
        zulu17
        openjdk8
        openjdk25
      ];
    })
  ];
}
