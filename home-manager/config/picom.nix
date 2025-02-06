{
  services.picom = {
    enable = true;
    backend = "glx";
    vSync = true;
    settings = {
      /*blur = {
        method = "gaussian";
        size = 10;
        deviation = 5.0;
      };*/
      corner-radius = 8;
    };
    shadow = true;
    shadowExclude = [ "class_g = 'Polybar'" ];
    fade = true;
    fadeSteps = [ 0.028 0.03 ];
  };
}
