{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    lm_sensors

    # Input
    xorg.xmodmap

    # Nix
    nix-index
  ];

  programs.bash = {
    enable = true;

    historyIgnore = [ "ls" "cd" ];
    historyControl = [ "erasedups" "ignorespace" ];

    shellAliases = {
      # Nix
      ns = "nix-shell";
      nb = "nix-build";
      ne = "nano /etc/nixos/configuration.nix";

      # Home manager
      hme = "(cd $HOME/.config/nixpkgs && code .)";
      hms = "home-manager switch";

      # Rails/Ruby
      be = "bundle exec";
      bi = "bundle install";
      rt = "RUBYOPT='-W0' bundle exec spring rspec";

      # Input
      caps = "xdotool key Caps_Lock";
      sk = "xmodmap $HOME/.config/.Xmodmap";
    };
  };
  
  programs.git = {
    enable = true;
    userName = "Sune Nilausen";
    userEmail = "sunenilausen@gmail.com";

    aliases = {
      s = "status";
      c = "commit";
      d = "diff";
      f = "fetch";
      co = "checkout";
      r = "rebase";

      staged = "diff --cached";
      unstage = "reset";
      amend = "commit --amend";
        
      # Rebase with pre-commit check at each commit
      rc = "rebase -x 'git reset --soft HEAD~1 && git commit -C HEAD@{1}'";

      lol = "log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'";

      w = "worktree";
      wl = "worktree list";
      wa = "worktree add";
    };

    extraConfig = {
      merge.conflictstyle = "diff3";
    };
  };

  programs.git.lfs.enable = true;
}
