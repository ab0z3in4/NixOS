{
  description = "NixOS configuration";

  inputs = {
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs-stable";
    lanzaboote.url = "github:nix-community/lanzaboote/v0.4.2";
    lanzaboote.inputs.nixpkgs.follows = "nixpkgs-stable";
  };

  outputs = inputs@{ nixpkgs-stable, nixpkgs-unstable, home-manager, lanzaboote, ... }: let system = "x86_64-linux"; in {
    nixosConfigurations = {
      ab0z3in4-PC = nixpkgs-stable.lib.nixosSystem {
        inherit system;
        specialArgs = {
          pkgs = import nixpkgs-stable {
            inherit system;
            config.allowUnfree = true;
          };
          pkgs-unstable = import nixpkgs-unstable {
            inherit system;
            config.allowUnfree = true;
          };
        };
        modules = [
          ./system/configuration.nix
          lanzaboote.nixosModules.lanzaboote
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ab0z3in4 = import ./home-manager/home.nix;
            home-manager.extraSpecialArgs = {
              pkgs = import nixpkgs-stable {
                inherit system;
                config.allowUnfree = true;
              };
              pkgs-unstable = import nixpkgs-unstable {
                inherit system;
                config.allowUnfree = true;
              };
            };
          }
        ];
      };
    };
  };
}
