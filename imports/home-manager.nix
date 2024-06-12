{ config, pkgs, inputs, ... }:

{
  nixpkgs.config = import ./pkgs-cfg.nix;

  home-manager = {
    backupFileExtension = "backup";
#    useUserPackages = true;
    users.nub = {
      imports = [
        inputs.nur.hmModules.nur
        ./home.nix
      ];
    };
  };
}
