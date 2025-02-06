{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      update = "sudo nixos-rebuild switch --flake /etc/nixos#ab0z3in4-PC";
      update-boot = "sudo nixos-rebuild boot --flake /etc/nixos#ab0z3in4-PC";
      remove-garbage = "sudo nix-collect-garbage -d";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "thefuck" ];
      theme = "robbyrussell";
    };
  };
}
