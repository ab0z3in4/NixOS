{
  xsession.windowManager.bspwm = {
    enable = true;
    settings = {
      border_width = 2;
      window_gap = 2;
      single_monocle = false;
      click_to_focus = true;
      split_ratio = 0.50;
      borderless_monocle = true;
      gapless_monocle = true;
      focus_by_distance = true;
      focus_follows_pointer = true;
      history_aware_focus = true;
      remove_disabled_monitors = true;
      merge_overlapping_monitors = true;
      pointer_modifier = "mod4";
      pointer_action1 = "move";
      pointer_action2 = "resize_side";
      pointer_action3 = "resize_corner";
      normal_border_color = "#4c566a";
      active_border_color = "#1e1e1e";
      focused_border_color = "#5e81ac";
      presel_feedback_color = "#5e81ac";
      urgent_border_color = "#dd2727";
    };
    extraConfig = '' bspc monitor -d 1 2 3 4 5 6 7 8 9 10 '';
    rules = {
      "gnome-calculator" = {
        state = "floating";
      };
      ".blueman-manager-wrapped" = {
        state = "floating";
      };
      "pavucontrol" = {
        state = "floating";
      };
      "Gthumb" = {
        state = "floating";
      };
      "motion_recorder" = {
        state = "floating";
      };
      "org.gnome.FileRoller" = {
        state = "floating";
      };
    };
    startupPrograms = [
      "xrandr --output eDP1 --mode 1366x768 --rate 60"
      "pgrep -x sxhkd > /dev/null || sxhkd"
      "pgrep -x polybar > /dev/null || polybar"
      "nitrogen --restore"
      "nm-applet"
      "dunst"
      "copyq"
      "blueman-applet"
      "numlockx on"
      "redshift -O 4500K"
      "xsetroot -cursor_name left_ptr"
    ];
  };
}
