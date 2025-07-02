{
  imports = [
    ./config/starship.nix
    ./config/kitty.nix
    ./config/gtk.nix
    ./config/kvantum.nix
    ./config/dunst.nix
    ./config/polybar.nix
    ./config/sxhkd.nix
    ./config/bspwm.nix
    ./config/picom.nix
    ./config/mpv.nix
    ./config/dconf.nix
    ./config/fonts.nix
    ./config/packages.nix
  ];

  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "25.05";
}
