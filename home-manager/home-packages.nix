{ inputs, pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
# flake inputs packages
    inputs.bootdev.packages.${stdenv.hostPlatform.system}.bootdev
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.pi

    # Desktop apps
    mpv
    imv
    shotcut
    gimp3
    brave
    obsidian

    # CLI utils
    unrar
    brightnessctl
    yt-dlp
    apktool
    cliphist
    ffmpeg
    ffmpegthumbnailer
    grimblast
    android-tools
    htop
    ntfs3g
    mediainfo
    microfetch
    irssi
    inetutils
    man-db
    man-pages
    fd
    gdb
    binutils
    usbutils
    playerctl
    ripgrep
    udisks
    unzip
    jq
    btop
    file
    wget
    wl-clipboard
    wlr-randr
    bluetui
    zip
    rr

    # Coding stuff 
    nodejs
    python313
    go
    libgcc
    glibc
    pnpm
    gnumake
    just
    typst
    gcc
    uv
    jetbrains.idea
  ];
}
