{
  pkgs,
  ...
}: {
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enbale = true;

  service.pipewire = {
    enable = true;
    pulse.audio = true;
  };

  environment.systemPackages = with pkgs; [
    neovim
    kitty
    wget
    git
  ];
}
