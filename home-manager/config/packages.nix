{ pkgs, ... }:

{
  home.packages = with pkgs; [
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
    copyq
    redshift
    networkmanagerapplet
    gnome-calendar
    gnome-system-monitor
    gnome-disk-utility
    pamixer
    pavucontrol
    flameshot
    nautilus
    gnome-calculator
    gthumb
    file-roller
    telegram-desktop
    wasistlos
    libreoffice-fresh
    hunspell
    evince
    qbittorrent
  ];
}
