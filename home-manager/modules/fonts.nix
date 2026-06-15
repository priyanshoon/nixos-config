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
		font-awesome
		powerline-fonts
		powerline-symbols
	];	
}
