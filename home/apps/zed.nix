{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd
    nil
    rust-analyzer
    zls
  ];

  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "rust"
      "toml"
      "lua"
      "zig"
    ];

    userSettings = {
      theme = {
        mode = "system";
        light = "Ayu Light";
        dark = "Ayu Dark";
      };
      terminal = {
        dock = "bottom";
      };
      lsp = {
        rust-analyzer = {
          binary = {
            path = "${pkgs.rust-analyzer}/bin/rust-analyzer";
            arguments = [ ];
          };
        };
      };
    };
  };
}
