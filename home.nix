{ config, pkgs, ... }:

{
  home.username = "julio";
  home.homeDirectory = "/home/julio";
  programs.git.enable = true;
  home.stateVersion = "25.11";
  programs.bash = {
    enable = true;
    shellAliases = {
      hi = "hello";
    };
  };

  home.packages = with pkgs; [
    vscode
    nodejs
    ripgrep
    gcc
    discord
  ];
}
