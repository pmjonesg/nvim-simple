{ lib, config, ... }:
{
  options = {
    lazygit.enable = lib.mkEnableOption "Enable lazygit plugin";
  };

  config = lib.mkIf config.lazygit.enable {
    plugins.lazygit = {
      enable = true;
    };
  };
}
