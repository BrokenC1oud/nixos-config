{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      git
      gcc
      gnumake
      ripgrep
      fd
      unzip

      lua-language-server
      stylua
      nil
      rust-analyzer
      rustc
      cargo
      rustfmt
      clippy
    ];
  };

  home.file."./.config/nvim" = {
    source = ../../nvim;
    recursive = true;
  };
}
