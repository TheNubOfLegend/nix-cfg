{ config, pkgs, ... }:

{
  imports = [
    ./home-manager.nix
    ./nix.nix
    ./users.nix
    ./fonts.nix
    ./languages.nix
  ];
}
