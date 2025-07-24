{ pkgs, ... }:

{
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs.qemu_kvm;
        runAsRoot = false;
        swtpm = {
          enable = true;
        };
      };
    };
    spiceUSBRedirection.enable = true;
  };
  programs.virt-manager.enable = true;
}
