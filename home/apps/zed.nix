{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd
    nil
  ];

  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
    ];
  };
}
