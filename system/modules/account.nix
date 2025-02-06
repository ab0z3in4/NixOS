{ pkgs, ... }:

{
  programs.zsh.enable = true;
  users.users.ab0z3in4 = {
    isNormalUser = true;
    #initialPassword = "password";
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "libvirtd" "kvm" ];
  };
}
