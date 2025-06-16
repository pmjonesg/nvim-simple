{ lib, config, ... }:
{
  options = {
    sonokai.enable = lib.mkEnableOption "Enable sonokai theme";
  };

  config = lib.mkIf config.sonokai.enable {
    colorschemes = {
      sonokai = {
        enable = true;
        settings = {
        };
      };
    };
  };
}
