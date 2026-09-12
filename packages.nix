{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Gaming and Social
    discord
    steam
    heroic
    protonplus
    gamemode
    mangohud
    lutris
    gamescope
    # Development / ProLangs
    vim
    wget
    git
    go
    python3
    shellcheck
    zed-editor
    gopls
    nixd
    nil
    sqlite
    gcc
    jq
    gh
    obsidian
    # CLI Tools
    fastfetch
    btop
    cava
    bat
    pv
    # Internet
    telegram-desktop
    floorp-bin
    qbittorrent
    mullvad-browser
    firefox
    tor-browser
    # System
    unzip
    bazaar
    gparted
    vaults
    kdePackages.sddm-kcm
    btrfs-assistant
    xz
    zstd
    testdisk-qt
    gearlever
    smartmontools
    rar
    # Niri
    swaybg
    jetbrains-mono
    fuzzel
    alacritty
    xwayland-satellite
    noctalia-shell
    mpv
    mpvpaper
    loupe
    # Security
    lynis
    vulnix
    clamav # Also in services.nix
    # Multimedia
    vlc
    obs-studio
    libreoffice
    # Other
    virt-manager
    (bleachbit.overrideAttrs (old: {
      postInstall = (old.postInstall or "") + ''
        rm -f $out/share/bleachbit/cleaners/snap.xml
      '';
    }))
  ];
}
