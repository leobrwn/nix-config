{ config, pkgs, ... }:

{
  boot.loader.limine.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.loader.limine.style.wallpapers = [ ./wallpaper.jpg ];
  boot.loader.limine.style.wallpaperStyle = "stretched";

}
