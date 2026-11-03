{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.git = {
    pkgs,
    lib,
    ...
  }: {
    programs.git = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.git;
    };
  };
  perSystem = {
    pkgs,
    lib,
    self',
    ...
  }: {
    packages.git = inputs.wrappers.wrappers.git.wrap {
      inherit pkgs;
      runtimePkgs = with pkgs; [
        git-secret
      ];
      settings = {
        user = {
          email = "priyanshoon.pg@gmail.com";
          name = "Priyanshu";
          signingKey = "~/.ssh/id_ed25519.pub";
        };
        credential.helper = "store";
        commit.gpgSign = true;
        gpg.format = "ssh";
      };
    };
  };
}
