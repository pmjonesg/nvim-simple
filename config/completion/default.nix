{ lib, config, ...}:
{
  imports = [];

  options = {
    completion.enable = lib.mkEnableOption "Enable completion module";
  };

  config = lib.mkIf config.completion.enable {};
}
