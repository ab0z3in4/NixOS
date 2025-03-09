{ pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    gh
    brightnessctl
    vscode
    htop
    neofetch
    firefox
    nitrogen
    numlockx
    rofi
    copyq
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
    whatsie
    libreoffice-fresh
    hunspell
    evince
    xfce.mousepad
    arduino-ide
  ];
}
