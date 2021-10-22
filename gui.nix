{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    discord
    slack
    vlc
    google-chrome
    firefox
    vscode
    spotify
    alacritty
    tilix
    heroku
    gimp
    libreoffice
    remmina
    obs-studio

    # desktop look & feel
    gnome3.gnome-tweak-tool
    gnome3.dconf-editor
    gnomeExtensions.system-monitor
  ];
}
