{ config, pkgs, ... }:

let
  # Attribute set for dotfiles in this repo to link into ~/.config.
  # The attribute name is for ~/.config/$attrSetName,
  #  e.g. "alacritty/alacritty.yml" for ~/.config/alacritty/alacritty.yml
  # The attribute value is the path to the dotfile in this repo.
  configFilesToLink = {
    "alacritty/alacritty.toml" = ./alacritty.toml;
    "hypr/hyprland.conf"  = ./hyprland.conf;
    "nvim" = ./nvim;
  };

  # Attribute set for dotfiles in this repo to link into home directory.
  # The attribute name is for ~/$attrSetName,
  #  e.g. ".hgrc" for ~/.hgrc.
  # The attribute value is the path to the dotfile in this repo.
  homeFilesToLink = {
    ".zshrc" = ./.zshrc;
    ".p10k.zsh" = ./.p10k.zsh;
  };

  # Function to help map attrs for symlinking home.file, xdg.configFile
  # e.g. from { ".hgrc" = ./hgrc; } to { ".hgrc".source = ./hgrc; }
  toSource = configDirName: dotfilesPath: { source = dotfilesPath; };
in
{
  # Symlink files under ~, e.g. ~/.hgrc
  home.file = pkgs.lib.attrsets.mapAttrs toSource homeFilesToLink;

  # Symlink files under ~/.config, e.g. ~/.config/alacritty/alacritty.yml
  xdg.configFile = pkgs.lib.attrsets.mapAttrs toSource configFilesToLink;

  # ...
}
