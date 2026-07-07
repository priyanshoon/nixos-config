{ inputs, pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically
    inputs.pwndbg.packages.${pkgs.system}.default 

    # Desktop apps
    zed-editor
    mpv
    signal-desktop
    shotcut
    gimp3
    brave
    radare2
    obsidian
    ghidra-bin
    burpsuite

    # CLI utils
    unrar
    brightnessctl
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
    rr

    # Coding stuff 
    nodejs
    python312
    libgcc
    glibc
    pnpm
    cmake
    gnumake
    openjdk
    typst
    gcc
    uv

    # WM stuff
    wl-mirror
  ];
}
