{ pkgs, pkgs-unstable, ... }:

{
  environment.systemPackages = 
  (with pkgs; [
    gcc
    gnumake
    ntfs3g
  ])
  ++
  (with pkgs-unstable; [
    nodejs
    python313
    uv
    git
    gzip
    unzip
    unrar
    sbctl
    starship
    virtiofsd
    virt-manager
    colloid-gtk-theme
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
