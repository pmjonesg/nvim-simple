{ lib, config, ... }:
{
  options = {
    treesitter-nvim.enable = lib.mkEnableOption "Enable treesitter-nvim module";
  };

  config = lib.mkIf config.treesitter-nvim.enable {
    plugins.treesitter = {
      enable = true;
      settings = {
        highlight = { enable = true; };
        indent = { enable = true; };
        autopairs = { enable = true; };
        folding = { enable = true; };
	ensure_installed = [
	  "bash"
	  "python"
	  "nix"
	  "vim"
	  "yaml"
	];
	auto_install = true;
	incremental_selection = {
	  enable = true;
	  keymaps = {
	    init_selection = "gnn";
	    node_incremental = "grn";
	    scope_incremental = "grc";
	    node_decremental = "grm";
	  };
	};
      };
    };
  };
}
