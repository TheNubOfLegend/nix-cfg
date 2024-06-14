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
    btop
    hyprland
    zsh
#    nil
    bitwarden-cli
    neovim
    alacritty
    wget
    ripgrep
    fd
    gh
    git
    chezmoi
    zoxide
    fzf
    bibata-cursors
    unzip
    hyprland
    wl-clipboard
    ironbar
    dunst
    fastfetch
    zsh
  ];

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
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
