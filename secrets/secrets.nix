let
    config = import ../config.nix;
    users = [
        config.me.sshKey
    ];

    systems = [
        # /etc/ssh/ssh_host_ed25519_key.pub
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIDuzHh5SyAIXgD3tYtauq2BOH6uTOPFxspo03N3abSy root@nixos"
    ];
in {
    "controld-dns-stamp.age".publicKeys = users ++ systems;
}
