{
  gtk = {
    enable = true;
    cursorTheme.name = "Bibata-Modern-Classic";
    cursorTheme.size = 16;
    theme.name = "adw-gtk3-dark";
    iconTheme.name = "Papirus-Dark";
    gtk3.extraCss = "
      @define-color window_bg_color #141414;
      @define-color window_fg_color #f8f8f2;
      @define-color view_bg_color #181818;
      @define-color view_fg_color @window_fg_color;
      @define-color accent_bg_color #1161cb;
      @define-color accent_color @accent_bg_color;
      @define-color headerbar_bg_color @window_bg_color;
      @define-color headerbar_fg_color @window_fg_color;
      @define-color popover_bg_color #252525;
      @define-color popover_fg_color @view_fg_color;
      @define-color dialog_bg_color @popover_bg_color;
      @define-color dialog_fg_color @popover_fg_color;
      @define-color card_bg_color rgba(255, 255, 255, 0.08);
      @define-color card_fg_color @window_fg_color;
      button.titlebutton {
        color: transparent;
        min-width: 18px;
        min-height: 18px;
      }
      button.titlebutton:backdrop {
        opacity: 0.5;
      }
      windowcontrols > button {
        color: transparent;
        min-width: 2px;
        min-height: 2px;
        border-radius: 100%;
        padding: 0;
        margin: 0 5px;
      }
      windowcontrols > button > image {
        padding: 0;
      }
      button.titlebutton.close,
      windowcontrols > button.close {
        background-color: #606060;
      }
      button.titlebutton.close:hover,
      windowcontrols > button.close:hover {
       opacity: 0.8;
      }
      button.titlebutton.maximize,
      windowcontrols > button.maximize {
        background-color: #606060;
      }
      button.titlebutton.maximize:hover,
      windowcontrols > button.maximize:hover {
        opacity: 0.8;
      }
      button.titlebutton.minimize,
      windowcontrols > button.minimize {
        background-color: #606060;
      }
      button.titlebutton.minimize:hover,
      windowcontrols > button.minimize:hover {
        opacity: 0.8;
      }
    ";
    gtk4.extraCss = "
      @define-color window_bg_color #141414;
      @define-color window_fg_color #f8f8f2;
      @define-color view_bg_color #181818;
      @define-color view_fg_color @window_fg_color;
      @define-color accent_bg_color #1161cb;
      @define-color accent_color @accent_bg_color;
      @define-color headerbar_bg_color @window_bg_color;
      @define-color headerbar_fg_color @window_fg_color;
      @define-color popover_bg_color #252525;
      @define-color popover_fg_color @view_fg_color;
      @define-color dialog_bg_color @popover_bg_color;
      @define-color dialog_fg_color @popover_fg_color;
      @define-color card_bg_color rgba(255, 255, 255, 0.08);
      @define-color card_fg_color @window_fg_color;
      button.titlebutton {
        color: transparent;
        min-width: 18px;
        min-height: 18px;
      }
      button.titlebutton:backdrop {
        opacity: 0.5;
      }
      windowcontrols > button {
        color: transparent;
        min-width: 2px;
        min-height: 2px;
        border-radius: 100%;
        padding: 0;
        margin: 0 5px;
      }
      windowcontrols > button > image {
        padding: 0;
      }
      button.titlebutton.close,
      windowcontrols > button.close {
        background-color: #606060;
      }
      button.titlebutton.close:hover,
      windowcontrols > button.close:hover {
        opacity: 0.8;
      }
      button.titlebutton.maximize,
      windowcontrols > button.maximize {
        background-color: #606060;
      }
      button.titlebutton.maximize:hover,
      windowcontrols > button.maximize:hover {
        opacity: 0.8;
      }
      button.titlebutton.minimize,
      windowcontrols > button.minimize {
        background-color: #606060;
      }
      button.titlebutton.minimize:hover,
      windowcontrols > button.minimize:hover {
        opacity: 0.8;
      }
    ";
  };
}
