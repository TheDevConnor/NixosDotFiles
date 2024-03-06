{ config, pkgs, ... }:

{
    home.username = "connor";
    home.homeDirectory = "/home/connor";

    home.stateVersion = "24.05";

    programs.home-manager.enable = true;

      dconf = {
            enable = true;
                settings = {
                      "org/gnome/desktop/interface" = {
                    color-scheme = "prefer-dark";
                  };
            };
      };

    gtk = {
          enable = true;
          theme = {
                package = pkgs.nordic;
                name = "Nordic";
          };

          iconTheme = {
                package = pkgs.nordzy-icon-theme;
                name = "Nordzy";
          };

          font = {
                name = "Sans";
                size = 11;
          };
    };
}
