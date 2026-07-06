{ pkgs, ... }:{
	fonts.fontconfig = {
		enable = true;
	};

	home.packages = with pkgs; [
		nerd-fonts.mononoki
        nerd-fonts.comic-shanns-mono
        nerd-fonts.anonymice
        dejavu_fonts
        noto-fonts
		noto-fonts-lgc-plus
		texlivePackages.hebrew-fonts
        noto-fonts-color-emoji
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
        liberation_ttf
        roboto-mono
        roboto-serif
        source-code-pro
		font-awesome
		powerline-fonts
		powerline-symbols
	];	
}
