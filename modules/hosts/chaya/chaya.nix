{...}: {
  flake.nixosModules.chaya = {pkgs, ...}: {
    programs.gnupg.agent = {
      enable = true;
      pinentryPackage = pkgs.pinentry-all;
    };
    environment.systemPackages = with pkgs; [
      pass
      localsend
      qbittorrent
      nautilus
      tor-browser
      telegram-desktop
      gimp
      imv
      yt-dlp
      ffmpeg
      man-db
      man-pages
      unzip
      jq
      binutils
      bootdev-cli
      udisks
      file
      zip
      go
      nodejs
      glibc
      libgcc
      gnumake
      just
      gcc
      uv
      rustc
      cargo
      pnpm
    ];
  };
}
