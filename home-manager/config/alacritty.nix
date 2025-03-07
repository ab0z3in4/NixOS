{ pkgs-unstable, ... }:

{
  programs.alacritty = {
    enable = true;
    package = pkgs-unstable.alacritty;
    settings = {
      colors = {
        bright = {
          black = "#545454";
          blue = "#94bff3";
          cyan = "#93e0e3";
          green = "#8ae234";
          magenta = "#b294bb";
          red = "#fc5454";
          white = "#ffffff";
          yellow = "#fce94f";
        };
        normal = {
          black = "#3f3f3f";
          blue = "#94bff3";
          cyan = "#06989a";
          green = "#4e9a06";
          magenta = "#85678f";
          red = "#cc0000";
          white = "#dcdccc";
          yellow = "#c4a000";
        };
        primary = {
          background = "#000000";
          foreground = "#dddddd";
        };
      };
      cursor = {
        style = {
          shape = "Beam";
          blinking = "Never";
        };
      };
      font = {
        size = 11.0;
        bold = {
          family = "JetBrains Mono Nerd Font";
          style = "Bold";
        };
        bold_italic = {
          family = "JetBrains Mono Nerd Font";
          style = "Bold Italic";
        };
        italic = {
          family = "JetBrains Mono Nerd Font";
          style = "Italic";
        };
        normal = {
          family = "JetBrains Mono Nerd Font";
          style = "Regular";
        };
      };
      keyboard = {
        bindings = [
          {
            action = "ToggleFullscreen";
            key = "F11";
          }
        ];
      };
      scrolling = {
        history = 50000;
      };
      window = {
        opacity = 0.9;
      };
    };
  };
}
