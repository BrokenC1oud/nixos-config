{
  pkgs,
  ...
}:
let
  comic-mono-liga = pkgs.callPackage ../packages/comic-mono-liga.nix { };
in
{
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  environment.systemPackages = with pkgs; [
    neovim
    kitty
    wget
    git

    pkgs.nixfmt-rfc-style
  ];

  programs.fish.enable = true;

  fonts.packages = with pkgs; [
    comic-mono-liga
  ];
}
