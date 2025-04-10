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
    displayManager.defaultSession = "none+bspwm";
    displayManager.autoLogin.enable = true;
    displayManager.autoLogin.user = "ab0z3in4";
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
