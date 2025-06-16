{ lib, config, ... }:
{
  options = {
    hardtime.enable = lib.mkEnableOption "Enable hardtime plugin";
  };
  
  config = lib.mkIf config.hardtime.enable {
    plugins.hardtime = {
      enable = true;
    };
  };
}
