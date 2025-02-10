{ pkgs-unstable, ... }:

{
  xdg.portal = {
    enable = true;
    config.common.default = "*";
    extraPortals = [ pkgs-unstable.xdg-desktop-portal-gtk ];
  };
  security.polkit.enable = true;
  security.apparmor.enable = true;
  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs-unstable.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };
}
