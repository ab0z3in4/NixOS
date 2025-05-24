{ pkgs, ... }:

{
  users.users.ab0z3in4 = {
    isNormalUser = true;
    # initialPassword = "password";
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "libvirtd" ];
  };
  programs.bash = {
    completion.enable = true;
    completion.package = pkgs.bash-completion;
    interactiveShellInit = ''eval "$(starship init bash)"'';
    shellAliases = {
      update-repo = "sudo nix flake update --flake /etc/nixos";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#ab0z3in4-PC";
      upgrade = "sudo nixos-rebuild switch --flake /etc/nixos#ab0z3in4-PC --upgrade";
      rebuild-boot = "sudo nixos-rebuild boot --flake /etc/nixos#ab0z3in4-PC";
      remove-garbage = "sudo nix-collect-garbage -d";
    };
  };
}
