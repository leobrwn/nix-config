{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    go
    steam
    fastfetch
    vscode
    discord
    telegram-desktop
    floorp-bin
    btop
    unzip
    jq
    python3
    virt-manager
    vaults
    p7zip
    bazaar
    shellcheck
    zed-editor
    lynis
    (bleachbit.overrideAttrs (old: {
      postInstall = (old.postInstall or "") + ''
        rm -f $out/share/bleachbit/cleaners/snap.xml
      '';
    }))
    gparted
    nil
    nixd
    gopls
    kdePackages.sddm-kcm
    vlc
    qbittorrent
    btrfs-assistant
    wine
    smartmontools
    xz
    zstd
    cava
    mullvad-browser
    testdisk-qt
    vulnix
    discord
    obs-studio
    obsidian
    gearlever
    heroic
    protonplus
    gamemode
    mangohud
    clamav
    gh
    rar
    libreoffice
  ];
}
