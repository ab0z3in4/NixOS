{ pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    gh
    brightnessctl
    vim
    vscode
    gnome-text-editor
    wget
    htop
    neofetch
    brave
    nitrogen
    rofi
    xfce.xfce4-clipman-plugin
    redshift
    networkmanagerapplet
    gnome-calendar
    gnome-system-monitor
    pamixer
    pavucontrol
    flameshot
    nautilus
    gnome-calculator
    gthumb
    file-roller
    telegram-desktop
    # whatsie
    wasistlos
    libreoffice-fresh
    hunspell
    evince
    qbittorrent
    obsidian
    libsForQt5.qtstyleplugin-kvantum
    qt6Packages.qtstyleplugin-kvantum
  ];
}
