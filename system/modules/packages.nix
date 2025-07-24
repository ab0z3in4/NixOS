{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    grub2
    efibootmgr
    gcc
    gnumake
    (callPackage ./sddm.nix {})
    kdePackages.qt5compat
    nodejs
    python313
    uv
    git
    p7zip
    gzip
    unzip
    unrar
    starship
    virtiofsd
  ];

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = [];

  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "kitty";
  };
}
