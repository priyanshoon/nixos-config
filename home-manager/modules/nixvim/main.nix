{ inputs, ... }:
{
	imports = [
		inputs.nixvim.homeModules.nixvim
	];

	programs.nixvim = {
		enable = true;
        defaultEditor = true;
		plugins.web-devicons.enable = false;
	};
}
