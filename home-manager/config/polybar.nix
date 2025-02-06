{
  services.polybar = {
    enable = true;
    config = {
      "bar/mainbar" = {
        width = "100%";
        height = "20pt";
        radius = 6;
        background = "#aa000000";
        foreground = "#C5C8C6";
        line-size = "3pt";
        border-size = "3pt";
        border-color = "#00000000";
        padding-left = 0;
        padding-right = 1;
        module-margin = 1;
        separator = "";
        separator-foreground = "#00000000";
        font-0 = "Fira Sans SemiBold:size=11;2";
        font-1 = "Font Awesome 6 Free Solid:pixelsize=11;2";
        modules-left = "xworkspaces xwindow";
        modules-right = "backlight pipewire memory cpu battery xkeyboard date systray";
        cursor-click = "pointer";
        cursor-scroll = "ns-resize";
        enable-ipc = true;
      };
      "module/systray" = {
        type = "internal/tray";
        tray-spacing = "3pt";
      };
      "module/xworkspaces" = {
        type = "internal/xworkspaces";
        icon1=3;
        icon-default = "";
        label-active = "%name%";
        label-active-background = "#C5C8C6";
        label-active-padding = 2;
        label-active-foreground = "#FF000000";
        label-occupied = "%name%";
        label-occupied-padding = 2;
        label-occupied-foreground = "#FFFFFF";
        label-occupied-underline = "#B9C244";
        label-urgent = "%name%";
        label-urgent-background = "#B9C244";
        label-urgent-padding = 2;
        label-empty = "%name%";
        label-empty-foreground = "#FFFFFF";
        label-empty-background= "#aa000000";
        label-empty-padding = 2;
      };
      "module/xwindow" = {
        type = "internal/xwindow";
        label = "%title:0:60:...%";
        format-prefix = "  ";
        format-prefix-foreground = "#00B19F";
        format-foreground = "#FFFFFF";
      };
      "module/xkeyboard" = {
        type = "internal/xkeyboard";
        blacklist-0 = "num lock";
        blacklist-1 = "caps lock";
        format-prefix = " ";
        format-prefix-foreground = "#FBC02D";
        label-layout = "%icon%";
        label-layout-background = "#aa000000";
        label-layout-foreground = "#FFFFFF";
        layout-icon-0 = "us;English";
        layout-icon-1 = "ara;Arabic";
      };
      "module/memory" = {
        type = "internal/memory";
        interval = 2;
        format-prefix = " ";
        format-prefix-foreground = "#5ADECD";
        format-foreground = "#FFFFFF";
        label = "%percentage_used:2%%";
      };
      "module/cpu" = {
        type = "internal/cpu";
        interval = 2;
        format-prefix = " ";
        format-prefix-foreground = "#EC407A";
        format-foreground = "#FFFFFF";
        label = "%percentage:2%%";
      };
      "module/date" = {
        type = "internal/date";
        interval = 1;
        format-prefix = " ";
        format-prefix-foreground = "#6C77BB";
        date = "%I:%M %p";
        date-alt = "%Y-%m-%d %I:%M:%S %p";
        label = "%date%";
        label-foreground = "#FFFFFF";
      };
      "settings" = {
        screenchange-reload = true;
        pseudo-transparency = true;
      };
      "module/battery" = {
        type = "internal/battery";
        label-discharging = "%percentage%%";
        label-discharging-foreground = "#FFFFFF";
        label-full = "100%";
        label-full-foreground = "#FFFFFF";
        label-charging = "%percentage%%";
        label-charging-foreground = "#FFFFFF";
        label-low = "BATTERY LOW";
        label-low-foreground = "#FFFFFF";
        format-discharging-prefix = " ";
        format-discharging-prefix-foreground = "#C574DD";
        format-full-prefix = " ";
        format-full-prefix-foreground = "#C574DD";
        format-charging-prefix = " ";
        format-charging-prefix-foreground = "#C574DD";
        format-low-prefix = " ";
        format-low-prefix-foreground = "#C574DD";
        full-at = 99;
        low-at = 5;
        battery = "BAT0";
        poll-interval = 5;
      };
      "module/backlight" = {
        type = "custom/script";
        exec = "sh -c 'echo $(( $(brightnessctl g) * 100 / $(brightnessctl m) ))'";
        format = "<label>";
        label = "%output%%";
        tail = true;
        scroll-up = "brightnessctl set 5%+";
        scroll-down = "brightnessctl set 5%-";
        format-foreground = "#FFFFFF";
        format-prefix = " ";
        format-prefix-foreground = "#E57C46";
      };
      "module/pipewire" = {
        type = "custom/script";
        exec = "pamixer --get-volume-human";
        tail = true;
        format = "<label>";
        label = "%output%";
        click-left = "pamixer --toggle-mute";
        scroll-up = "pamixer --unmute && pamixer --increase 5";
        scroll-down = "pamixer --unmute && pamixer --decrease 5";
        format-foreground = "#FFFFFF";
        format-prefix = " ";
        format-prefix-foreground = "#8897F4";
      };
    };
    script = "polybar mainbar &";
  };
}
