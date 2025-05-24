{
  imports = [
    ./hardware-configuration.nix
    ./modules/fileSystem.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/services.nix
    ./modules/drivers.nix
    ./modules/sound.nix
    ./modules/account.nix
    ./modules/packages.nix
    ./modules/fonts.nix
    ./modules/virtualisation.nix
    ./modules/zram.nix
    ./modules/qt.nix
    ./modules/system.nix
  ];

  # Documentation
  documentation.nixos.enable = false;

  # Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Enable Unfree Software
  nixpkgs.config.allowUnfree = true;

  # Set your time zone.
  time.timeZone = "Africa/Cairo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ar_EG.utf8";
  };

  system.stateVersion = "25.05";
}
