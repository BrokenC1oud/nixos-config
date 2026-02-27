{ lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd
    nil
    rust-analyzer
    zls
    clang-tools
  ];

  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "rust"
      "toml"
      "lua"
      "zig"
      "cpp"
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
          path = lib.getExe pkgs.rust-analyzer;
        };
      };
    };
  };
}
