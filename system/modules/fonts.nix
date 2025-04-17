{ pkgs-unstable, ... }:

{
  fonts = {
    packages = with pkgs-unstable; [
      noto-fonts
      noto-fonts-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      nerd-fonts.fira-code
      nerd-fonts.jetbrains-mono
      fira-code
      fira-code-symbols
      fira-sans
      hack-font
      font-awesome
      fira-code
      jetbrains-mono
      open-sans
      corefonts
      vista-fonts
      roboto-serif
      (callPackage ./fonts-custom.nix {})
    ];
  };
}
