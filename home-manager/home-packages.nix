{ inputs, pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically
    inputs.pwndbg.packages.${pkgs.system}.default 

    # Desktop apps
    imv
    mpv
    signal-desktop
    shotcut
    obsidian
    evince
    gimp3
    pavucontrol
    kdePackages.dolphin
    brave
    fuzzel
    binaryninja-free
    radare2

    # CLI utils
    brightnessctl
    cliphist
    ffmpeg
    ffmpegthumbnailer
    grimblast
    htop
    ntfs3g
    mediainfo
    microfetch
    irssi
    inetutils
    opencode
    man-db
    man-pages
    qmk
    fd
    gdb
    binutils
    usbutils
    playerctl
    ripgrep
    showmethekey
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

    # Coding stuff 
    nodejs
    python312
    libgcc
    glibc
    cmake
    gnumake
    openjdk
    typst
    gcc
    uv

    # WM stuff
    libnotify
    wl-mirror
  ];
}
