{ pkgs-unstable, ... }:

{
  services.sxhkd = {
    enable = true;
    package = pkgs-unstable.sxhkd;
    keybindings = {
      "super + Return" = "alacritty";
      "super + shift + Return" = "nautilus";
      "super + d" = "rofi -show drun";
      "super + Escape" = "pkill -USR1 -x sxhkd";
      "ctrl + alt + f" = "brave";
      "super + x" = "~/.config/bspwm/scripts/powermenu.sh";
      "XF86AudioRaiseVolume" = "~/.config/bspwm/scripts/volume-control.sh up";
      "XF86AudioLowerVolume" = "~/.config/bspwm/scripts/volume-control.sh down";
      "XF86AudioMute" = "~/.config/bspwm/scripts/volume-control.sh mute";
      "super + ctrl + Up" = "~/.config/bspwm/scripts/brightness-control.sh up";
      "super + ctrl + Down" = "~/.config/bspwm/scripts/brightness-control.sh down";
      "super + ctrl + t" = "dunstify \"Your Battary Mode IS $(powerprofilesctl get)\"";
      "super + ctrl + s" = "powerprofilesctl set power-saver && dunstify \"Your Battary Mode IS $(powerprofilesctl get)\"";
      "super + ctrl + b" = "powerprofilesctl set balanced && dunstify \"Your Battary Mode IS $(powerprofilesctl get)\"";
      "super + ctrl + p" = "powerprofilesctl set performance && dunstify \"Your Battary Mode IS $(powerprofilesctl get)\"";
      "Print" = "flameshot gui";
      "super + shift + r" = "bspc wm -r";
      "super + q" = "bspc node -c";
      "super + m" = "bspc desktop -l next";
      "super + g" = "bspc node -s biggest.window";
      "super + shift + s" = "bspc node -t {tiled,pseudo_tiled,floating,fullscreen}";
      "super + s" = "bspc node -t floating";
      "super + {_,shift + }{h,j,k,l}" = "bspc node -{f,s} {west,south,north,east}";
      "super + {p,b,comma,period}" = "bspc node -f @{parent,brother,first,second}";
      "super + {_,shift + }c" = "bspc node -f {next,prev}.local.!hidden.window";
      "super + bracket{left,right}" = "bspc desktop -f {prev,next}.local";
      "super + {grave,Tab}" = "bspc {node,desktop} -f last";
      "super + {o,i}" = "bspc wm -h off; bspc node {older,newer} -f; bspc wm -h on";
      "super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";
      "super + ctrl + {h,j,k,l}" = "bspc node -p {west,south,north,east}";
      "super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";
      "super + ctrl + space" = "bspc node -p cancel";
      "super + ctrl + shift + space" = "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";
      "super + alt + {h,j,k,l}" = "bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";
      "super + alt + shift + {h,j,k,l}" = "bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}";
      "super + {Left,Down,Up,Right}" = "bspc node -v {-20 0,0 20,0 -20,20 0}";
    };
  };
}
