{ pkgs, pkgs-unstable, ... }:

{
  environment.systemPackages = 
  (with pkgs; [
    nodejs_23
    python313
    gcc
    gnumake
    ntfs3g
  ])
  ++
  (with pkgs-unstable; [
    git
    gh
    unzip
    gzip
    unrar
    sbctl
    brightnessctl
    vscode
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
    whatsie
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
