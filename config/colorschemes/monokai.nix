{ lib, config, ... }:
{
  options = {
    monokai.enable = lib.mkEnableOption "Enable monokai theme";
  };

  config = lib.mkIf config.monokai.enable {
    colorschemes = {
      monokai-pro = {
        enable = true;
        settings = {
          filter = "spectrum";
        };
      };
    };
  };
}
