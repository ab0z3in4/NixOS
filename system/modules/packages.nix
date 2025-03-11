{ pkgs, pkgs-unstable, ... }:

{
  environment.systemPackages = 
  (with pkgs; [
    nodejs_22
    python313
    gcc
    gnumake
    ntfs3g
  ])
  ++
  (with pkgs-unstable; [
    git
    gzip
    unzip
    unrar
    sbctl
    starship
    virtiofsd
    adw-gtk3
    bibata-cursors
    papirus-icon-theme
  ]);

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = [];

  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };
}
