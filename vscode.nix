{ config, lib, pkgs, ... }:

let unstable = import <nixpkgs-unstable> {};

    vscode-with-extensions = pkgs.vscode-with-extensions.override {
      vscodeExtensions = (with unstable.vscode-extensions; [
        bbenoist.Nix
        coenraads.bracket-pair-colorizer
        ms-vsliveshare.vsliveshare
      ]) + pkgs.vscode-utils.extensionsFromVscodeMarketplace [{
          name = "ruby";
          publisher = "rebornix";
          version = "0.28.1";
        }
    };
in
{
  home.packages = [
    vscode-with-extensions
  ];
}
