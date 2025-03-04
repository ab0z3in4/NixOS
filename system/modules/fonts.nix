{ pkgs-unstable, ... }:

{
  fonts {
    packages = with pkgs-unstable; [
      noto-fonts
      noto-fonts-emoji
      nerd-fonts.fira-code
      nerd-fonts.jetbrains-mono
      cantarell-fonts
      fira-code
      fira-code-symbols
      fira-sans
      hack-font
      font-awesome
      fira-code
      jetbrains-mono
      open-sans
      roboto
      merriweather
    ];
    fontconfig.defaultFonts = {
      sansSerif = [ "Roboto" "Noto Naskh Arabic" ];
      serif = [ "Merriweather" "Noto Naskh Arabic" ];
      monospace = [ "JetBrains Mono" "Noto Naskh Arabic" ];
    };
  }  
}
