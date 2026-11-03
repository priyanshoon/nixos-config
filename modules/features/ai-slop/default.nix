{
  inputs,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.ai-slop = moduleWithSystem ({self', ...}: {
    environment.systemPackages = with self'.packages; [
      pi
    ];
  });
  perSystem = {
    pkgs,
    inputs',
    ...
  }: {
    packages.pi = inputs.wrappers.lib.wrapPackage ({...}: {
      inherit pkgs;
      package = inputs'.llm-agents.packages.pi;
    });
  };
}
