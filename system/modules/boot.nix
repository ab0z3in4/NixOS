{ lib, ... }:

{
  boot = {
    kernelParams = [ "nohibernate" "apparmor=1" "security=apparmor" ];
    tmp.cleanOnBoot = true;
    supportedFilesystems = [ "ntfs" ];
    lanzaboote = {
      enable = true;
      pkiBundle = "/var/lib/sbctl";
    };
    loader = {
      efi.canTouchEfiVariables = true;
      # systemd-boot.enable = true;
      systemd-boot.enable = lib.mkForce false;
      timeout = 0;
    };
    kernelModules = [ "tcp_bbr" "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" "kvm-intel" ];
    kernel.sysctl = {
      "net.ipv4.tcp_congestion_control" = "bbr";
      "net.core.default_qdisc" = "fq";
      "net.core.wmem_max" = 1073741824;
      "net.core.rmem_max" = 1073741824;
      "net.ipv4.tcp_rmem" = "4096 87380 1073741824";
      "net.ipv4.tcp_wmem" = "4096 87380 1073741824";
    };
  };
}
