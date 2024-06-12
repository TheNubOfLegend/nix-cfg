{
  wayland.windowManager.hyprland = {
  enable = true;
  settings = {
    general = {
      gaps_in = 5;
      gaps_out = 5;
      "col.active_border" = "rgba(8fbcbbee) rgba(88c0d0ee) 45deg";
      "col.inactive_border" = "rgba(2e3440aa)";
      resize_on_border = true;
    };
    decoration = {
      inactive_opacity = 0.8;
      blur = {
        enabled = true;
        size = 3;
        passes = 1;
      };
    };
    animations = {
      enabled = true;

      bezier = [
        "neat, 0.7, 0.32, 0, 1.15"
      ];

      animation = [
        "windows, 1, 4, neat"
        "windowsOut, 1, 4, neat, popin 80%"
        "border, 1, 6, neat"
        "borderangle, 1, 4, neat"
        "fade, 1, 4, neat"
        "workspaces, 1, 5, neat"
      ];
    };
    input = {
      follow_mouse = 2;
      sensitivity = -0.7;
    };
    misc = {
      force_default_wallpaper = 1;
      disable_hyprland_logo = true;
    };
    dwindle = {
      preserve_split = true;
    };

