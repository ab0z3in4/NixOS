{
  gtk = {
    enable = true;
    cursorTheme.name = "Bibata-Modern-Classic";
    cursorTheme.size = 16;
    theme.name = "Colloid-Dark";
    iconTheme.name = "Papirus-Dark";
    gtk3.bookmarks = [
      "file:///mnt/Data Data"
      "file:///home/ab0z3in4/Documents Documents"
      "file:///home/ab0z3in4/Downloads Downloads"
      "file:///home/ab0z3in4/Music Music"
      "file:///home/ab0z3in4/Pictures Pictures"
      "file:///home/ab0z3in4/Videos Videos"
    ];
    gtk2.extraConfig = "gtk-toolbar-style = \"GTK_TOOLBAR_ICONS\"
gtk-toolbar-icon-size = \"GTK_ICON_SIZE_LARGE_TOOLBAR\"
gtk-button-images = 1
gtk-menu-images = 1
gtk-enable-event-sounds = 1
gtk-enable-input-feedback-sounds = 0
gtk-xft-antialias = 1
gtk-xft-hinting = 1
gtk-xft-hintstyle = \"hintslight\"
gtk-xft-rgba = \"rgb\"
gtk-application-prefer-dark-theme = 1";
    gtk3.extraConfig = {
      gtk-toolbar-style = "GTK_TOOLBAR_ICONS";
      gtk-toolbar-icon-size = "GTK_ICON_SIZE_LARGE_TOOLBAR";
      gtk-button-images = 1;
      gtk-menu-images = 1;
      gtk-enable-event-sounds = 1;
      gtk-enable-input-feedback-sounds = 0;
      gtk-xft-antialias = 1;
      gtk-xft-hinting = 1;
      gtk-xft-hintstyle = "hintslight";
      gtk-xft-rgba = "rgb";
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-toolbar-style = "GTK_TOOLBAR_ICONS";
      gtk-toolbar-icon-size = "GTK_ICON_SIZE_LARGE_TOOLBAR";
      gtk-button-images = 1;
      gtk-menu-images = 1;
      gtk-enable-event-sounds = 1;
      gtk-enable-input-feedback-sounds = 0;
      gtk-xft-antialias = 1;
      gtk-xft-hinting = 1;
      gtk-xft-hintstyle = "hintslight";
      gtk-xft-rgba = "rgb";
      gtk-application-prefer-dark-theme = 1;
    };
  };
}
