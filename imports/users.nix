{ config, pkgs, ... }:

{
  users.users.nub = {
    initialPassword = " ";
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
      packages = with pkgs; [
      firefox
        tree
      ];
  };
}
