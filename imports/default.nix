{ config, pkgs, ... }:

{
  imports = [
    ./nix.nix
    ./home-manager.nix
    ./users.nix
    ./fonts.nix
    ./languages.nix
    ./pkgs-cfg.nix
  ];
}
