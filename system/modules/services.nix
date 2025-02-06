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
    xserver = {
      enable = true;
      windowManager.bspwm.enable = true;
      xkb = {
        layout = "us,ara";
        variant = "qwerty";
        model = "pc105";
        options = "grp:win_space_toggle";
      };
      displayManager = {
        lightdm = {
          enable = true;
          greeters.slick = {
            enable = true;
            theme.name = "adw-gtk3-dark";
            iconTheme.name = "Papirus-Dark";
            cursorTheme.name = "Bibata-Modern-Classic";
            cursorTheme.size = 16;
            font.name = "JetBrains Mono";
          };
        };
      };
    };
  };
}
