{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    lm_sensors
    neofetch

    # Input
    xorg.xmodmap

    # Nix
    nix-index
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.bash = {
    enable = true;

    historyIgnore = [ "ls" "cd" ];
    historyControl = [ "erasedups" "ignorespace" ];

    shellAliases = {
      # Nix
      ns = "nix-shell";
      nb = "nix-build";
      nr = "nixos-rebuild switch";
      ne = "nano /etc/nixos/configuration.nix";

      # Home manager
      hme = "(cd $HOME/.config/nixpkgs && code .)";
      hms = "home-manager switch";

      # Rails/Ruby
      be = "bundle exec";
      bi = "bundle install";
      rt = "RUBYOPT='-W0' bundle exec spring rspec";
      re = "export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH";

      # Projects
      lms-compose = "cd ~/blueprint/learningplatform && docker-compose up";
      lms-server = "cd ~/blueprint/learningplatform && nix-shell --run 'bundle exec rails server'";
      lms-worker = "cd ~/blueprint/learningplatform && nix-shell --run 'bundle exec sidekiq -v'";
      lms-logs = "heroku logs --tail -a bp-lms-production";
      lms-console = "heroku run console -a bp-lms-production";
      lms-staging-logs = "heroku logs --tail -a bp-lms-staging";
      lms-staging-console = "heroku run console -a bp-lms-staging";

      # Input
      caps = "xdotool key Caps_Lock";
      sk = "xmodmap $HOME/.config/.Xmodmap";

      # System
      sp = "systemctl suspend";
      shi = "systemctl hibernate";

      # Docker
      dcu = "docker-compose up";
    };
  };

  programs.starship = {
    enable = true;

    settings = {
      character = {
        symbol = "➜";
        error_symbol = "✗";
        use_symbol_for_status = true;
      };
      nix_shell.disabled = true;
      cmd_duration.show_milliseconds = true;
      username.disabled = true;
      package.disabled = true;
      aws.disabled = true;
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
      #sh = "git show HEAD^:";
      f = "fetch";
      co = "checkout";
      r = "rebase";
      ap = "add --patch";
      lg = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
      ld = "git diff HEAD^ HEAD";

      staged = "diff --cached";
      unstage = "reset HEAD";
      amend = "commit --amend --no-edit";
      last = "log -1 HEAD";
      latest-branch = "branch --sort=-committerdate";
      prune-branches = "branch | grep -v 'master\|staging' | xargs git branch -D ";
      stashmod = "stash push --keep-index";
      filestashes = "git stash list --color=always --pretty='%C(yellow)%h %>(14)%Cgreen%cr %C(blue)%gs' --name-only";

      # Rebase with pre-commit check at each commit
      rc = "rebase -x 'git reset --soft HEAD~1 && git commit -C HEAD@{1}'";

      lol = "log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'";

      w = "worktree";
      wl = "worktree list";
      wa = "worktree add";
    };

    extraConfig = {
      merge.conflictstyle = "diff3";
      push.default = "current";
    };
  };

  programs.git.lfs.enable = true;
}
