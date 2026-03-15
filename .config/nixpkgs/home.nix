{ config, pkgs, ... } : {
	home = {
		username = "raison";
		homeDirectory = "/home/raison/";
		stateVersion = "23.11";
	};

	programs.bash = {
		enable = true;
		shellAliases = {
			rebuild = "sudo nixos-rebuild switch";
		};
	};
}
