{ pkgs-unstable, ... }:

{
  environment.systemPackages = with pkgs-unstable; [
    nodejs
    python3
    gcc
    gnumake
    git
    gh
    unzip
    gzip
    unrar
    sbctl
    ntfs3g
    brightnessctl
    neovim
    ripgrep
    wget
    htop
    neofetch
    firefox
    alacritty
    starship
    bspwm
    sxhkd
    polybar
    picom
    nitrogen
    dunst
    numlockx
    rofi
    copyq
    redshift
    networkmanagerapplet
    nautilus
    nautilus-open-any-terminal
    gnome-calendar
    gnome-system-monitor
    dconf
    pamixer
    pavucontrol
    flameshot
    gnome-calculator
    mpv
    gthumb
    file-roller
    adw-gtk3
    bibata-cursors
    papirus-icon-theme
    telegram-desktop
    zapzap
    onlyoffice-desktopeditors
    xournalpp
    virt-manager
  ];
  #programs.nix-ld.enable = true;
  #programs.nix-ld.libraries = [];
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };
}
