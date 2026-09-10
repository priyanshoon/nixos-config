{
    networking.networkmanager.dns = "none";
    networking.nameservers = [ "127.0.0.1" ];

    services.dnscrypt-proxy = {
        enable = true;
        settings = {
            listen_addresses = [ "127.0.0.1:53" ];
            server_names = [ "controld" ];
            static.controld = {
                stamp = "sdns://AgcAAAAAAAAACjc2Ljc2LjIuMTEAFGZyZWVkbnMuY29udHJvbGQuY29tKS9uby1hZHMtcG9ybi1kYXRpbmctZ2FtYmxpbmctdHlwby1tYWx3YXJl";
            };
        };
    };
}
