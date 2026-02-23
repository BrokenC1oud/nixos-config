{
  description = "my nixos configuration";

  nixConfig = {
    config.allowUnfree = true;
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
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    {
      nixosConfigurations.brokencloud = nixpkgs.lib.nixosSystem {
        modules = [
          ./host

          ./modules/fonts.nix
          ./modules/packages.nix
          ./modules/services.nix

          home-manager.nixosModules.home-manager

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.broken_cloud = import ./home;
          }
        ];
      };
    };
}
