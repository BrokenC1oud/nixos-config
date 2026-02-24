{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhs;

    profiles = {
      default = {
        userSettings = {
          "workbench.colorTheme" = "Solarized Dark";
        };

        extensions = with pkgs.vscode-extensions; [
          ms-python.python
          ms-python.vscode-pylance
          ms-python.debugpy
        ];
      };
    };
  };
}
