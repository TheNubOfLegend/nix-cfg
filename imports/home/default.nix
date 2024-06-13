{ self, ... }:

{
  imports = [
#    ./neovim.nix
    ./zsh.nix
    ./hyprland.nix
    ./firefox.nix
  ];
}
