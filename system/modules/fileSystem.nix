{
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
    "/mnt/Data" = {
      device = "/dev/sda5";
      fsType = "ntfs";
      options = [ "defaults" "uid=1000" "gid=100" "fmask=0133" "dmask=022" ];
    };
  };
}
