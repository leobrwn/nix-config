{ config, pkgs, ... }:

{
  boot.plymouth = {
    enable = true;
    theme = "bgrt";
  };

  # Needed so Plymouth can also render over the LUKS unlock prompt
  boot.initrd.systemd.enable = true;

  # Quiet boot so Plymouth has a clean screen instead of kernel/service text
  boot.kernelParams = [
    "quiet"
    "splash"
  ];
  boot.consoleLogLevel = 3;
  boot.initrd.verbose = false;
}
