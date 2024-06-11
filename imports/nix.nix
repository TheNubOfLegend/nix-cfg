{ config, pkgs, ... }:

{
  nix = {
    nixPath = [
      "nixos-config=/home/nub/.config/nix/machines/${config.networking.hostName}/configuration.nix"
    ];
    gc.automatic = true;
  };
}
