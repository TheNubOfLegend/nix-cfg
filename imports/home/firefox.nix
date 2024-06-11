#{ pkgs, ... }:

{
  enable = true;
  profiles = {
    default = {
      id = 0;
      isDefault = true;
      name = "nub";
      search = {
        default = "DuckDuckGo";
        force = true;
      };
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        bitwarden
        darkreader
      ];
      settings = {
        "extensions.autoDisableScopes" = false;
      };
    };
  };
}
