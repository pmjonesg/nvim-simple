{ lib, config, ... }:
{
  options = {
    conform.enable = lib.mkEnableOption "Enable conform plugin";
  };

  config = lib.mkIf config.conform.enable {
    plugins = {
      conform-nvim = {
        enable = true;
        settings = {
          nix = [ "nixfmt" ];
        };
      };
    };
  };
}
