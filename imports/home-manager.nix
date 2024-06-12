{ config, pkgs, inputs, ... }:

{
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
