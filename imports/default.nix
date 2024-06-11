{ config, pkgs, ... }:

{
  imports = [
    ./nix.nix
    ./home.nix
    ./users.nix
    ./fonts.nix
    ./languages.nix
  ];
}
