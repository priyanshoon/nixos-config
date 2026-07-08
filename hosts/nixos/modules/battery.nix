{ pkgs, ... }: {
    systemd.services.battery-charge-threshold = {
        description = "Set battery charge threshold";
        wantedBy = [ "multi-user.target" ];
        after = [ "multi-user.target" ];
        serviceConfig = {
            Type = "oneshot";
            ExecStart = "${pkgs.writeShellScript "set-battery-threshold" ''
                echo 80 > /sys/class/power_supply/BAT1/charge_control_end_threshold
                ''}";
        };
    };

    systemd.services.battery-charge-threshold-resume = {
        description = "Reapply battery charge threshold after resume";
        wantedBy = [ "suspend.target" "hibernate.target" "hybrid-sleep.target" ];
        after = [ "suspend.target" "hibernate.target" "hybrid-sleep.target" ];
        serviceConfig = {
            Type = "oneshot";
            ExecStart = "${pkgs.writeShellScript "set-battery-threshold-resume" ''
                echo 80 > /sys/class/power_supply/BAT1/charge_control_end_threshold
                ''}";
        };
    };
}
