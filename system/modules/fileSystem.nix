{
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
    "/mnt/Data" = {
      device = "/dev/disk/by-uuid/f0480b26-ea12-4b02-9253-168de2c8e738";
      fsType = "ext4";
      options = [ "defaults" "noatime" "barrier=1" "data=ordered" "errors=remount-ro" "commit=300" "nofail" ];
    };
  };
  systemd.tmpfiles.rules = [ "d /mnt/Data 0775 ab0z3in4 users -" ];
}
