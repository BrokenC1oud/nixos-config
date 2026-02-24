{ inputs, ... }:
{
  programs.vscode = {
    enable = true;

    userSettings = {
      "workbench.colorTheme" = "Solarized Dark";
    };

    extensions = [

    ];
  };
}
