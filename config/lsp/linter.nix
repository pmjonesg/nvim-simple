{ lib, config, ... }:
{
  options = {
    linter.enable = lib.mkEnableOption "Enable linter plugin";
  };

  config = lib.mkIf config.conform.enable {
    plugins = {
      lint = {
        enable = true;
        lintersByFt = {
	  dockerfile = [ "hadolint" ];
	  json = [ "jsonlint" ];
	  markdown = [ "vale" ];
	  nix = [ "nix" ];
	  python = [ "pylint" ];
	  ruby = [ "ruby" ];
	  text = [ "vale" ];
	};
      };
    };
  };
}
