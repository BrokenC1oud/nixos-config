{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;

    profiles = {
      default = {
        userSettings = {
          "workbench.colorTheme" = "Solarized Dark";
        };

        extensions = with pkgs.vscode-extensions; [
          ms-python.python
        ];
      };
    };
  };
}
