{
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
    "/mnt/Data" = {
      device = "/dev/disk/by-uuid/01DA5372A5ABD550";
      fsType = "ntfs";
      options = [ "defaults" "nofail" "exec" "noatime" "umask=0002" "uid=1000" "gid=100" ];
    };
  };
}
