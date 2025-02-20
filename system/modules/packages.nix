{ pkgs-unstable, ... }:

{
  environment.systemPackages = with pkgs-unstable; [
    nodejs
    python3
    gcc
    gnumake
    git
    gh
    duf
    unzip
    gzip
    unrar
    ntfs3g
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
    whatsie
    onlyoffice-desktopeditors
    xournalpp
  ];

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = [];

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };
}
