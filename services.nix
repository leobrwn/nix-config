{ config, pkgs, ... }:

{

  services.xserver.enable = true;

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  # uncomment when needed
  # services.clamav = {
  # daemon.enable = true; # the clamd scanning daemon
  # updater.enable = true; # freshclam, runs on a timer to keep signatures updated
  # };

  services.btrfs.autoScrub = {
    enable = true;
    interval = "monthly";
  };

  services.i2pd = {
    enable = true;

    # Local-only proxies for applications that you explicitly configure to use I2P.
    proto.httpProxy.enable = true; # http://127.0.0.1:4444
    proto.socksProxy.enable = true; # socks5://127.0.0.1:4447
    proto.http.enable = true;
    proto.sam.enable = true;
  };

  programs.niri.enable = true;

  services.fwupd.enable = true;

  # Flatpak service
  services.flatpak.enable = true;

  services.earlyoom.enable = true;

  services.power-profiles-daemon.enable = true;

  hardware.enableRedistributableFirmware = true;
  hardware.cpu.intel.updateMicrocode = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Cups service
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

}
