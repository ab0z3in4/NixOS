{
  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system"];
      uris = ["qemu:///system"];
    };
    "org/gnome/desktop/interface" = {
      gtk-theme = "Adwaita-dark";
      color-scheme = "prefer-dark";
    };
    "org/gnome/shell/extensions/user-theme" = {
      name = "Adwaita-dark";
    };
    "org/gnome/desktop/applications/terminal" = {
      exec = "kitty";
      exec-arg = "--single-instance";
    };
  };
}
