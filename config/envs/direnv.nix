{ lib, config, ... }:
{
  options = {
    direnv.enable = lib.mkEnableOption "Enable direnv plugin";
  };

  config = lib.mkIf config.direnv.enable {
    plugins.direnv = {
      enable = true;
    };
  };
}
