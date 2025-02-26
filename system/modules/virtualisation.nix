{ pkgs-unstable, ... }:

{
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs-unstable.qemu_kvm;
        swtpm = {
          enable = true;
          package = pkgs-unstable.swtpm;
        };
        ovmf = {
          enable = true;
          packages = [ pkgs-unstable.OVMFFull.fd ];
        };
      };
    };
    spiceUSBRedirection.enable = true;
  };
  programs.virt-manager.enable = true;
}
