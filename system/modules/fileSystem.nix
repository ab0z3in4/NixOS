{
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
    "/mnt/Data" = {
      device = "/dev/disk/by-uuid/d722fd87-f734-49a3-b9ef-4fa1593e5413";
      fsType = "ext4";
      options = [ "defaults" "noatime" "barrier=1" "data=ordered" "errors=remount-ro" "commit=300" "nofail" ];
    };
  };
  systemd.tmpfiles.rules = [ "d /mnt/Data 0775 ab0z3in4 users -" ];
}
