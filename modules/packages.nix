{ pkgs, ... }:
{
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    fish
  ];

  programs.fish.enable = true;
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
  programs.nix-ld.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };

  programs.sway = {
    enable = true;
    extraPackages = with pkgs; [
      wl-clipboard
    ];
    environment.sessionVariables.NIXOS_OZONE_WL = "1";
  };

  nixpkgs.config.allowUnfree = true;
}
