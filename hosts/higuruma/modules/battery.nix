{ inputs, ... }: {
    imports = [
      inputs.nixos-hardware.nixosModules.asus-battery
    ];
    services.tlp = {
        enable = true;
        settings = {
            START_CHARGE_THRESH_BAT1 = 40;  # Start charging at 40%
            STOP_CHARGE_THRESH_BAT1 = 80;   # Stop charging at 80%
        };
    };   
}

