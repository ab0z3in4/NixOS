{ pkgs-unstable, ... }:

{
  virtualisation = {
    libvirtd = {
      enable = true;
      package = pkgs-unstable.libvirt;
      qemu = {
        package = pkgs-unstable.qemu_kvm;
        swtpm = {
          enable = true;
          package = pkgs-unstable.swtpm;
        };
      };
    };
    # vmware.host.enable = true;
    spiceUSBRedirection.enable = true;
  };
}
