{ lib, config, ... }:
{
  options = {
    clipboard.enable = lib.mkEnableOption "Enable clipboard module";
  };

  config = lib.mkIf config.clipboard.enable {
    clipboard.register = "unnamedplus";
  };
}
