{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    (nerdfonts.override { fonts = [ "FiraCode" "JetBrainsMono" ]; })
    cantarell-fonts
    cascadia-code
    fira-code
    fira-code-symbols
    liberation_ttf
    fira-sans
    hack-font
    font-awesome
    fira-code
    jetbrains-mono
    open-sans
  ];
}
