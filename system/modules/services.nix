{ lib, pkgs-unstable, ... }:

{
  services = {
    dbus.enable = true;
    udisks2.enable = true;
    udisks2.mountOnMedia = true;
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    power-profiles-daemon.enable = true;
    blueman.enable = true;
    libinput.enable = true;
    picom.enable = true;
    displayManager = {
      defaultSession = "none+bspwm";
      sddm = {
        enable = true;
        autoNumlock = true;
        package = pkgs-unstable.kdePackages.sddm;
        theme = "sddm-astronaut-theme";
      };
    };
    xserver = {
      enable = true;
      windowManager.bspwm.enable = true;
      xkb = {
        layout = "us,ara";
        variant = "qwerty";
        model = "pc105";
        options = "grp:win_space_toggle";
      };
    };
  };
}
