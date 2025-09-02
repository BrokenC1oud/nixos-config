{
  description = "Broken Cloud's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      brokennix = let
        username = "broken_cloud";
      in
        nixpkgs.lib.nixosSystem {
	  system = "x86_64-linux";

	  modules = [
	    ./hosts/brokennix
	    ./modules/packages.nix

	    home-manager.nixosModules.home-manager
	    {
	      home-manager.useGlobalPkgs = true;
	      home-manager.useUserPackages = true;
	      home-manager.users.${username} = import ./home;
	    }
	  ];
	};
    };
  };
}

