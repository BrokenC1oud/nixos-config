{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhs;

    profiles = {
      default = {
        userSettings = {
          "workbench.colorTheme" = "Quiet Light";
          "editor.fontSize" = 18;
        };

        extensions = with pkgs.vscode-extensions; [
          ms-python.python
          ms-python.vscode-pylance
          ms-python.debugpy

          tamasfe.even-better-toml

          ms-vscode-remote.remote-ssh
          ms-vscode-remote.remote-ssh-edit
          ms-vscode.remote-explorer
        ];
      };
    };
  };
}
