{ pkgs-unstable, ... }:

{
  services.picom = {
    enable = true;
    package = pkgs-unstable.picom;
    backend = "glx";
    vSync = true;
    fade = true;
    fadeSteps = [ 0.028 0.03 ];
  };
}
