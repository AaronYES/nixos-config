{ config, pkgs, ... }:

{
  imports =
    map (d: ./apps + d)
      (map (n: "/" + n)
        (with builtins;attrNames
          (readDir ./apps)));

  home.username = "aaron";
  home.homeDirectory = "/home/aaron";
  home.stateVersion = "23.05";

  home.packages = with pkgs; [
  # Application
  flameshot
  # telegram-desktop
  vscode
  firefox
  chromium
  # virt-manager
  # jetbrains.idea-ultimate
  ];

  programs.home-manager.enable = true;
}
