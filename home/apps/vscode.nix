{ inputs, ... }:
{
  programs.vscode = {
    enable = true;

    profiles = {
      default = {
        userSettings = {
          "workbench.colorTheme" = "Solarized Dark";
        };

        extensions = [

        ];
      };
    };
  };
}
