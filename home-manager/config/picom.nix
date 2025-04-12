{ pkgs-unstable, ... }:

{
  services.picom = {
    enable = true;
    package = pkgs-unstable.picom;
    backend = "glx";
    vSync = true;
    settings = {
      corner-radius = 5;
    };
    fade = true;
    fadeSteps = [ 0.028 0.03 ];
  };
}
