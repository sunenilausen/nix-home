# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

let
  mkTuple = lib.hm.gvariant.mkTuple;
in
{
  dconf.settings = {
    "org/gnome/desktop/peripherals/touchpad" = {
      "tap-to-click" = true;
      "two-finger-scrolling-enabled" = true;
    };

    "org/gnome/control-center" = {
      "last-panel" = "display";
    };

    "org/gnome/desktop/wm/keybindings/switch-applications" = {
      "custom-value" = "<Super><Tab>"; #not sure if correct
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/desktop/app-folders" = {
      "folder-children" = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      "apps" = [ "eog.desktop" "gnome-abrt.desktop" "gnome-system-log.desktop" "gnome-system-monitor.desktop" "gucharmap.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Calculator.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.Screenshot.desktop" "org.gnome.Terminal.desktop" "org.gnome.tweaks.desktop" "seahorse.desktop" "vinagre.desktop" "yelp.desktop" ];
      "categories" = [ "X-GNOME-Utilities" ];
      "name" = "X-GNOME-Utilities.directory";
      "translate" = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      "categories" = [ "X-SuSE-YaST" ];
      "name" = "suse-yast.directory";
      "translate" = true;
    };

    "org/gnome/desktop/calendar" = {
      "show-weekdate" = true;
    };

    "org/gnome/desktop/datetime"  = {
      "automatic-timezone" = true;
    };

    "org/gnome/desktop/input-sources" = {
      "current" = "uint32 0";
      "sources" = [ (mkTuple [ "xkb" "dk" ]) (mkTuple [ "xkb" "us" ]) ];
      "xkb-options" = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      "enable-animations" = false;
      "enable-hot-corners" = false;
      "gtk-im-module" = "gtk-im-context-simple";
      "text-scaling-factor" = 1.5;
    };

    "org/gnome/desktop/notifications" = {
      "application-children" = [ "gnome-power-panel" "google-chrome" ];
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      "application-id" = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/google-chrome" = {
      "application-id" = "google-chrome.desktop";
    };

    "org/gnome/desktop/privacy" = {
      "report-technical-problems" = true;
    };

    "org/gnome/desktop/session" = {
      "idle-delay" = "uint32 3000";  # Does not seem to work
    };

    "org/gnome/desktop/wm/preferences" = {
      "action-middle-click-titlebar" = "none";
      "action-right-click-titlebar" = "menu";
      "button-layout" = "appmenu:minimize,maximize,close";
    };

    "org/gnome/epiphany" = {
      "ask-for-default" = false;
    };

    "org/gnome/epiphany/state" = {
      "is-maximized" = false;
      "window-position" = mkTuple [ 25 27 ];
      "window-size" = mkTuple [ 1024 646 ];
    };

    "org/gnome/evolution-data-server" = {
      "migrated" = true;
      "network-monitor-gio-name" = "";
    };

    "org/gnome/gedit/plugins" = {
      "active-plugins" = [ "filebrowser" "modelines" "docinfo" "spell" "time" ];
    };

    "org/gnome/gedit/plugins/filebrowser" = {
      "root" = "file:///";
      "tree-view" = true;
      "virtual-root" = "file:///home/sune/Downloads";
    };

    "org/gnome/gedit/preferences/ui" = {
      "show-tabs-mode" = "auto";
    };

    "org/gnome/gedit/state/window" = {
      "bottom-panel-size" = 140;
      "side-panel-active-page" = "GeditWindowDocumentsPanel";
      "side-panel-size" = 200;
      "size" = mkTuple [ 900 646 ];
      "state" = 87168;
    };

    "org/gnome/mutter" = {
      "attach-modal-dialogs" = true;
      "dynamic-workspaces" = true;
      "edge-tiling" = true;
      "focus-change-on-pointer-rest" = true;
      "workspaces-only-on-primary" = true;
    };

    "org/gnome/nautilus/preferences" = {
      "default-folder-viewer" = "icon-view";
      "search-filter-time-type" = "last_modified";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      "night-light-last-coordinates" = mkTuple [ 55.65790143988481 12.5655 ];
    };

    "org/gnome/settings-daemon/plugins/power" = {
      "sleep-inactive-ac-type" = "nothing";
      "sleep-inactive-battery-timeout" = 1800;
    };

    "org/gnome/settings-daemon/plugins/xsettings" = {
      "antialiasing" = "grayscale";
      "hinting" = "slight";
    };

    "org/gnome/shell" = {
      "favorite-apps" = "@as []";
    };

    "org/gnome/shell/world-clocks" = {
      "locations" = "@av []";
    };

    "org/gnome/software" = {
      "check-timestamp" = "int64 1598861174";
    };

    "org/gnome/system/location" = {
      "enabled" = true;
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      "palette" = [ "rgb(7,54,66)" "rgb(220,50,47)" "rgb(133,153,0)" "rgb(181,137,0)" "rgb(38,139,210)" "rgb(211,54,130)" "rgb(42,161,152)" "rgb(238,232,213)" "rgb(0,43,54)" "rgb(203,75,22)" "rgb(88,110,117)" "rgb(101,123,131)" "rgb(131,148,150)" "rgb(108,113,196)" "rgb(147,161,161)" "rgb(253,246,227)" ];
      "use-theme-colors" = false;
    };

    "org/gtk/settings/color-chooser" = {
      "selected-color" = mkTuple [ true 0.1803921568627451 ];
    };

    "org/gnome/shell/keybindings" = {
      "switch-to-application-1" = "@as []";  # Does not seem to work
      "switch-to-application-2" = "@as []";
      "switch-to-application-3" = "@as []";
      "switch-to-application-4" = "@as []";
      "switch-to-application-5" = "@as []";
      "switch-to-application-6" = "@as []";
      "switch-to-application-7" = "@as []";
      "switch-to-application-8" = "@as []";
      "switch-to-application-9" = "@as []";
    };
  };
}
