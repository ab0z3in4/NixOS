{ pkgs-unstable, ... }:

{
  fonts.packages = with pkgs-unstable; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    cantarell-fonts
    cascadia-code
    fira-code
    fira-code-symbols
    liberation_ttf
    libertinus
    fira-sans
    hack-font
    font-awesome
    fira-code
    jetbrains-mono
    open-sans
  ];
}
