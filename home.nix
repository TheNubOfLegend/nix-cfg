{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
    # ref = "nixos-24.05";
  });
in
{
  imports = [
    (import "${home-manager}/nixos")
    ./home
    nixvim.nixosModules.nixvim
  ];

  home-manager.backupFileExtension = "orig";

  home-manager.users.nub = { pkgs, ... }: {
#    programs.zsh.enable = true;
#    wayland.windowManager.hyprland.enable = true;

    home.packages = with pkgs; [ 
      pkgs.btop
      pkgs.hyprland
      pkgs.zsh
    ];

    home.stateVersion = "24.05";
    programs.home-manager.enable = true;

    home.pointerCursor = {
      gtk.enable = true;
      # x11.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 12;
    };

    programs.btop = {
      enable = true;
      settings = {
        color_theme = "nord";
      };
    };
  };
}
