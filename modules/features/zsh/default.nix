{
  inputs,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.zsh = moduleWithSystem ({
    pkgs,
    self',
    ...
  }: {
    nixpkgs.overlays = [
      (final: prev: {
        zsh = self'.packages.zsh;
      })
    ];
    programs.zsh = {
      enable = true;
    };

    programs.starship = {
      enable = true;
    };

    programs.zoxide.enable = true;
  });
  perSystem = {
    pkgs,
    lib,
    ...
  }: {
    packages.starship = inputs.wrappers.wrappers.starship.wrap {
      inherit pkgs;
      settings = {
        add_newline = true;
        command_timeout = 200;
        format = "[$directory$git_branch$git_status]($style)$character";

        character = {
          error_symbol = "[✗](bold cyan)";
          success_symbol = "[❯](bold cyan)";
        };

        directory = {
          truncation_length = 2;
          truncation_symbol = "…/";
          repo_root_style = "bold cyan";
          repo_root_format = "[$repo_root]($repo_root_style)[$path]($style)[$read_only]($read_only_style) ";
          read_only = " 🔒";
        };

        git_branch = {
          format = "[$branch]($style) ";
          style = "italic cyan";
        };
      };
    };
    packages.zsh = inputs.wrappers.wrappers.zsh.wrap {
      inherit pkgs;
      runtimePkgs = [pkgs.fzf];
      zshAliases = {
        cat = lib.getExe pkgs.bat;
        bt = lib.getExe pkgs.btop;
        md = "mkdir";
        cd = "z";
        ls = "${lib.getExe pkgs.eza} -l";
        lg = lib.getExe pkgs.lazygit;
        vi = "nvim";
        tp = "tmux-personal";
        tw = "tmux-work";
      };
      zshrc.content = ''
              source <(${lib.getExe pkgs.fzf} --zsh)
        eval "$(fzf --zsh)"
      '';
    };
  };
}
