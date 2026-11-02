{moduleWithSystem, ...}: {
  flake.nixosModules.network = moduleWithSystem ({...}: {config, ...}: {
    networking = {
      networkmanager = {
        enable = true;
      };
      firewall.enable = false;
    };
    systemd.services.NetworkManager-wait-online.enable = false;
  });
}

