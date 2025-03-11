{ pkgs-unstable, ... }:

{
  boot = {
    plymouth = {
      enable = true;
      theme = "glitch";
      themePackages = with pkgs-unstable; [
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "glitch" ];
        })
      ];
    };
    consoleLogLevel = 0;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
      "nohibernate"
      "apparmor=1"
      "security=apparmor"
      "slab_nomerge"
      "page_alloc.shuffle=1"
      "pti=on"
      "init_on_alloc=1"
      "init_on_free=1"
    ];
    tmp.cleanOnBoot = true;
    supportedFilesystems = [ "ntfs" "btrfs" ];
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
      # systemd-boot.enable = lib.mkForce false;
      timeout = 0;
    };
    /*lanzaboote = {
      enable = true;
      pkiBundle = "/var/lib/sbctl";
    };*/
    kernelModules = [
      "tcp_bbr"
      "nvidia"
      "nvidia_modeset"
      "nvidia_uvm"
      "nvidia_drm"
      "kvm-intel"
      "overlay"
      "tun"
    ];
    kernel.sysctl = {
      "net.ipv4.tcp_congestion_control" = "bbr";
      "net.core.default_qdisc" = "fq_codel";
      "net.core.wmem_max" = 1073741824;
      "net.core.rmem_max" = 1073741824;
      "net.ipv4.tcp_rmem" = "4096 87380 1073741824";
      "net.ipv4.tcp_wmem" = "4096 87380 1073741824";
      "net.ipv4.tcp_fin_timeout" = 15;
      "net.ipv4.tcp_tw_reuse" = 1;
      "net.ipv4.tcp_syncookies" = 1;
    };
  };
}
