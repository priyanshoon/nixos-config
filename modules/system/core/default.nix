{self, ...}: {
  flake.nixosModules.core = {pkgs, ...}: let
    modules = with self.nixosModules; [
      user
      bootloader
      nix
      locale
    ];
  in {
    imports =
      [
        /etc/nixos/hardware-configuration.nix
      ]
      ++ modules;

    services.gvfs.enable = true;

    environment.systemPackages = with pkgs; [
      vim
      unzip
      alacritty
      p7zip-rar
      usbutils
      lsof
      gvfs
      libmtp
      libnotify
      android-tools
      python315
      curlWithGnuTls
      wget
      brave-origin
      wl-clipboard
    ];
    system.stateVersion = "26.05";
  };
}
