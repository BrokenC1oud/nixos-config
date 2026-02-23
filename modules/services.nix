{ pkgs, ... }:
{
  # Enable the X11 windowing system.
  # services.xserver.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

  # Enable sound.
  # services.pulseaudio.enable = true;
  # OR
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    enableFishIntegration = true;
    # pinentry is a collection of simple PIN or passphrase dialogs used for
    # password entry
    pinentryPackage = pkgs.pinentry-qt;
  };
}
