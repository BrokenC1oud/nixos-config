{
  pkgs,
  ...
}: {
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
  ];

  fonts.packages = with pkgs; [
    pkgs.callPackage ./fonts/comic-mono-liga.nix
  ];
}
