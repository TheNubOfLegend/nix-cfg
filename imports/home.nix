{ config, pkgs, ... }:

{
  imports = [
    ./home
    ./dotfiles/symlink.nix
  ];

#    programs.zsh.enable = true;
#    wayland.windowManager.hyprland = import ./home/hyprland.nix;

  home.stateVersion = "24.05";

  home.packages = with pkgs; [ 
    pkgs.btop
    pkgs.hyprland
    pkgs.zsh
    pkgs.nil
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

  xdg.enable = true;

  programs.btop = {
    enable = true;
    settings = {
      color_theme = "nord";
    };
  };
}
