{
  pkgs,
  ...
}:
let
  comic-mono-liga = pkgs.callPackage ./fonts/comic-mono-liga.nix { };
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
    fish
    wget
    git

    pkgs.nixfmt-rfc-style
  ];

  fonts.packages = with pkgs; [
    comic-mono-liga
  ];
}
