{ inputs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim = {
    enable = false;
    defaultEditor = true;
    plugins.web-devicons.enable = true;
  };
}
