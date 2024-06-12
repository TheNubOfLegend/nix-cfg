{ config, pkgs, ... }:

{
  nix = {
    settings.experimental-features = [ "nix-command" "flakes" ];
    nixPath = [
      "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
      "nixos-config=/home/nub/.config/nix/machines/${config.networking.hostName}/configuration.nix"
      "/nix/var/nix/profiles/per-user/root/channels"
    ];
    gc.automatic = true;
  };
}
