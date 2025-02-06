{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    gh
    unzip
    gzip
    unrar
    efibootmgr
    sbctl
    grub2
    ntfs3g
    brightnessctl
    neovim
    ripgrep
    nodejs_22
    python3
    gcc
    gnumake
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
    nautilus-open-any-terminal
    pamixer
    flameshot
    gnome-calculator
    mpv
    gthumb
    file-roller
    thefuck
    xdg-desktop-portal-gtk
    adwaita-qt
    adw-gtk3
    bibata-cursors
    papirus-icon-theme
    telegram-desktop
    zapzap
    onlyoffice-desktopeditors
    xournalpp
  ];
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    zlib
    zstd
    stdenv.cc.cc
    curl
    openssl
    attr
    libssh
    bzip2
    libxml2
    acl
    libsodium
    util-linux
    xz
    systemd
  ];
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };
}
