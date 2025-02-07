{ pkgs, pkgs-unstable, ... }:

{
  environment.systemPackages =
  (with pkgs; [ nodejs_22 python3 gcc gnumake ])
  ++
  (with pkgs-unstable; [
    git
    gh
    unzip
    gzip
    unrar
    sbctl
    ntfs3g
    brightnessctl
    vim
    neovim
    ripgrep
    wget
    htop
    neofetch
    brave
    alacritty
    bspwm
    sxhkd
    polybar
    nitrogen
    polkit_gnome
    dunst
    numlockx
    rofi
    copyq
    redshift
    networkmanagerapplet
    nautilus
    pamixer
    pavucontrol
    flameshot
    gnome-calculator
    mpv
    gthumb
    file-roller
    thefuck
    adwaita-qt
    adw-gtk3
    bibata-cursors
    papirus-icon-theme
    telegram-desktop
    zapzap
    onlyoffice-desktopeditors
    xournalpp
  ]);
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = [];
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };
}
