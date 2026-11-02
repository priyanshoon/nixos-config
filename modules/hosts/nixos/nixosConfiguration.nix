{...}: {
  flake.nixosModules.nixosConfiguration = {pkgs, ...}: {
    programs.gnupg.agent = {
      enable = true;
      pinentryPackage = pkgs.pinentry-all;
    };
    environment.systemPackages = with pkgs; [
      git
      pass
      localsend
      qbittorrent
      nautilus
      tor-browser
    ];
  };
}
