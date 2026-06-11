{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

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
    typst
    gcc
    uv

    # WM stuff
    libnotify
    wl-mirror
  ];
}
