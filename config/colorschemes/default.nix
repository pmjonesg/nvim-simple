{ lib, config, ... }:
{
  imports = [
    ./monokai.nix
  ];

  options = {
    colorschemes.enable = lib.mkEnableOption "Enable colorschemes module";
  };

  config = lib.mkIf config.colorschemes.enable {
    monokai.enable = lib.mkDefault true;
  };
}
