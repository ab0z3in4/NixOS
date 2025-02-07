{ pkgs-unstable, ... }:

{
  users.users.ab0z3in4 = {
    isNormalUser = true;
    #initialPassword = "password";
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "libvirtd" "kvm" ];
  };
  programs.bash = {
    completion.enable = true;
    completion.package = pkgs-unstable.bash-completion;
    #interactiveShellInit = "eval \"$(starship init bash)\"";
    shellAliases = {
      update = "sudo nixos-rebuild switch --flake /etc/nixos#ab0z3in4-PC";
      update-boot = "sudo nixos-rebuild boot --flake /etc/nixos#ab0z3in4-PC";
      remove-garbage = "sudo nix-collect-garbage -d";
    };
  };
}
