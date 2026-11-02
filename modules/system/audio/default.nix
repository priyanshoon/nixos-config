{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.audio = {
    pkgs,
    lib,
    ...
  }: {
    environment.systemPackages = with pkgs; [
      playerctl
      pavucontrol
      pulseaudioFull
      pipewire
    ];
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
