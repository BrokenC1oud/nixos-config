{
  description = "my nixos configuration";

  nixConfig = {
    substituters = [
      "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    chinese-fonts-overlay.url = "github:brsvh/chinese-fonts-overlay/main";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, chinese-fonts-overlay, ... }: {
    nixosConfigurations.brokencloud = nixpkgs.lib.nixosSystem {
      modules = [
        ./host

	home-manager.nixosModules.home-manager

	{
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.extraSpecialArgs = { inherit inputs; };
	  home-manager.users.broken_cloud = import ./home;
	}

	(
	  { pkgs, ... }:
	  {
	    nixpkgs = {
	      config.allowUnfree = true;
	      overlays = [
	        inputs.chinese-fonts-overlay.overlays.default
	      ];
	    };
	    fonts.packages = with pkgs; [
	      foundertypeFonts.FZHTK
	      foundertypeFonts.FZSSK
	      foundertypeFonts.FZFSK
	      foundertypeFonts.FZKTK
	    ];
	  }
	)
      ];
    };
  };
}
