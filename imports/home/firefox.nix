{ config, inputs, ... }:

{
  programs.firefox = {
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
        settings = {
          "browser.contentblocking.category" = "strict";
          "browser.newtabpage.enabled" = false; # Blank new tab page.
          "browser.send_pings" = false;
          "browser.startup.page" = 3; # Resume last session.
          "browser.theme.toolbar-theme" = 0;
          "browser.theme.content-theme" = 0;
          "browser.uidensity" = 0;
          "devtools.theme" = "dark"; 
          "dom.security.https_only_mode" = true;
          "extensions.autoDisableScopes" = 0;
           # Fully disable Pocket. See
          # https://www.reddit.com/r/linux/comments/zabm2a.
          "extensions.pocket.enabled" = false;
          "extensions.pocket.api" = "0.0.0.0";
          "extensions.pocket.loggedOutVariant" = "";
          "extensions.pocket.oAuthConsumerKey" = "";
          "extensions.pocket.onSaveRecs" = false;
          "extensions.pocket.onSaveRecs.locales" = "";
          "extensions.pocket.showHome" = false;
          "extensions.pocket.site" = "0.0.0.0";
          "browser.newtabpage.activity-stream.pocketCta" = "";
          "browser.newtabpage.activity-stream.section.highlights.includePocket" = false;
          "services.sync.prefs.sync.browser.newtabpage.activity-stream.section.highlights.includePocket" = false;
          "font.name.serif.x-western" = "MesloLGS NF";
          "font.size.variable.x-western" = 16;
          "layout.css.devPixelsPerPx" = 0.8;
          "privacy.donottrackheader.enabled" = true;
          "privacy.donottrackheader.value" = 1;
          "privacy.firstparty.isolate" = true;
          "signon.rememberSignons" = false;
        };
        extensions = with config.nur.repos.rycee.firefox-addons; [
          ublock-origin
          bitwarden
          darkreader
          privacy-badger
          clearurls
          istilldontcareaboutcookies
        ];
      };
    };
  };
}
