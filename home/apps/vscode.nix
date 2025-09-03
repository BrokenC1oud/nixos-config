{
  pkgs,
  ...
}: {
  programs.vscode = {
    enable = true;
    profiles = {
      default = {
        extensions = with pkgs.vscode-extensions; [
          teabyii.ayu 
        ];

	userSettings = {
	  workbench.colorTheme = "Ayu Mirage Bordered";
	  workbench.iconTheme = "ayu";
	  editor.fontFamily = "Liga Comic Mono";
	  editor.fontLigatures = true;
	  explorer.confirmDelete = false;
          editor.fontSize = 16;
	};
      };
    };
  };  
}
