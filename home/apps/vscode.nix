{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhs;

    profiles = {
      default = {
        userSettings = {
          "workbench.colorTheme" = "Solarized Dark";
          "editor.fontSize" = 18;
        };

        extensions = with pkgs.vscode-extensions; [
          ms-python.python
          ms-python.vscode-pylance
          ms-python.debugpy

          pkgs.vscode-utils.buildVscodeExtension
          {

          }
          tamasfe.even-better-toml
        ];
      };
    };
  };
}
