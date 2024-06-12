{ config, pkgs, ... }:

{
  imports = [
    ./home
  ];

  nixpkgs.config = import ./pkgs-cfg.nix;
#    programs.zsh.enable = true;
#    wayland.windowManager.hyprland = import ./home/hyprland.nix;

  home.stateVersion = "24.05";

  home.packages = with pkgs; [ 
    pkgs.btop
    pkgs.hyprland
    pkgs.zsh
  ];

# maybe unnecessary (benley)?
#  programs.home-manager.enable = true;

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
}
