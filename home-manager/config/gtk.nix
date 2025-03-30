{
  gtk = {
    enable = true;
    cursorTheme.name = "Bibata-Modern-Classic";
    cursorTheme.size = 16;
    theme.name = "Orchis-Dark-Compact";
    iconTheme.name = "Papirus-Dark";
    gtk3.bookmarks = [
      "file:///mnt/Data Data"
      "file:///home/ab0z3in4/Documents Documents"
      "file:///home/ab0z3in4/Downloads Downloads"
      "file:///home/ab0z3in4/Music Music"
      "file:///home/ab0z3in4/Pictures Pictures"
      "file:///home/ab0z3in4/Videos Videos"
    ];
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
}
