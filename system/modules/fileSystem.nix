{
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
    "/mnt/Data" = {
      device = "/dev/disk/by-uuid/5757f58d-1a9b-4be4-ba04-ebb36d0bb9be";
      fsType = "ext4";
      options = [ "defaults" "noatime" "barrier=1" "data=ordered" "errors=remount-ro" "commit=300" "nofail" ];
    };
  };
  systemd.tmpfiles.rules = [ "d /mnt/Data 0775 ab0z3in4 users -" ];

}
