{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nil
  ];

  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
    ];
  };
}
