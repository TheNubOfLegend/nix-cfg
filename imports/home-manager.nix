{ config, pkgs, inputs, ... }:

{
  nixpkgs.config = import ./pkgs-cfg.nix;

  home-manager = {
    backupFileExtension = "orig";
#    useUserPackages = true;
    users.nub = {
      imports = [
        ./home.nix
      ];
    };
  };
}
