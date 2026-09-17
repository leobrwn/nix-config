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
    zip
    wails
    vscode
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
    tor-browser
    librewolf
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
    lact
    cpu-x
    xclicker
    (bleachbit.overrideAttrs (old: {
      postInstall = (old.postInstall or "") + ''
        rm -f $out/share/bleachbit/cleaners/snap.xml
      '';
    }))
  ];
}
