{
  imports = [
    ./config/starship.nix
    ./config/alacritty.nix
    ./config/virt-manager.nix
    ./config/gtk.nix
    ./config/dunst.nix
    ./config/polybar.nix
    ./config/sxhkd.nix
    ./config/bspwm.nix
    ./config/picom.nix
    ./config/fontConfig.nix
  ];
  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "24.11";
}
