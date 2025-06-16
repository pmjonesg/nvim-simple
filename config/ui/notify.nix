{ lib, config, ... }:
{
  options = {
    notify.enable = lib.mkEnableOption "Enable notify plugin";
  };
  
  config = lib.mkIf config.notify.enable {
    plugins.notify = {
      enable = true;
    };
  };
}
